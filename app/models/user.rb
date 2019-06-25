class User < ApplicationRecord
 	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :registerable, :trackable and :omniauthable
  	devise :database_authenticatable, :recoverable, 
    :rememberable, :validatable

	#Campos que não podem ser nulos
	validates :nome, presence: false#, length: {maximum: 50}
	validates :cpf, uniqueness: false#, length: {maximum: 18}

	#Demais Campos
	validates :admin, presence: false
	validates :cep, presence: false#, length: {maximum: 8}
	validates :end_logr, presence: false#, length: {maximum: 50}
	validates :end_num, presence: false#, length: {maximum: 5}
	validates :end_compl, presence: false#, length: {maximum: 50}
	validates :end_cid, presence: false#, length: {maximum: 50}
	validates :end_ug, presence: false#, length: {maximum: 2}
	validates :tel_fixo, presence: false#, length: {maximum: 10}
	validates :tel_cel, presence: false#, length: {maximum: 12}
	validates :dt_nasc, presence: false
  	validates :rg, presence: false#, length: {maximum: 8}
  	validates :rg_emissor, presence: false#, length: {maximum: 5}
  
	#Chama o método que faz a validação do CPF     
  	before_validation :valida_Cpf, on: :create

   #Chama o método que faz a validação do Telefone
   validate :valida_telefone

  	#Retrive Customer, ordenado ascendentemente
  	scope :searchUser, ->(query) { where("nome ILIKE ?", "%#{query}%").order( nome: :asc)}

 	#Método que valida se o CPF é válido ou não.
 	def valida_Cpf
	    if(!CPF.new(cpf).valid?)
	 		 errors.add("CPF", I18n.t('messages.errorCPF&CNPJ'))
	    end
  	end

  	#Método que valida se ao menos um campo de telefone foi preenchido.
	def valida_telefone
		if((tel_cel.blank?) && (tel_fixo.blank?))
		  errors.add(" ", I18n.t('messages.error'))
		end
	end

end

