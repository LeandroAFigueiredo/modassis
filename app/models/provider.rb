class Provider < ApplicationRecord
	has_many :stocks

	#Campos que não podem ser nulos
	validates :nome, presence: true#, length: {maximum: 50}
	validates :cpf, uniqueness: false#, length: {maximum: 18}
	validates :cnpj, uniqueness: false#, length: {maximum: 18}

	#Demais Campos
	validates :cep, presence: false#, length: {maximum: 8}
	validates :end_logr, presence: false#, length: {maximum: 50}
	validates :end_num, presence: false#, length: {maximum: 5}
	validates :end_compl, presence: false#, length: {maximum: 50}
	validates :end_cid, presence: false#, length: {maximum: 50}
	validates :end_ug, presence: false#, length: {maximum: 2}
	validates :tel_fixo, presence: false#, length: {maximum: 10}
	validates :tel_cel, presence: false#, length: {maximum: 12}
	 
	#Chama o método que faz a validação do Telefone, CPF e CNPJ 
	validate :valida_telefone
	validate :valida_CPF_CNPJ

	#Retrive Provider, ordenado ascendentemente
	scope :searchProvider, ->(query) { where("nome like ?", "%#{query}%").order( nome: :asc)}

	#Chama o método que faz a validação do CPF    
	
	def valida_CPF_CNPJ 
		if((!cpf.blank?) && (cnpj.blank?))
			
			if(!CPF.new(cpf).valid?)
				errors.add("CPF; ", I18n.t('messages.errorCPF&CNPJ') )
			end

			elsif ((!cnpj.blank?) && (cpf.blank?))
			
				if(!CNPJ.new(cnpj).valid?)
					errors.add("CNPJ, ", I18n.t('messages.errorCPF&CNPJ') )
				end
		
		else
			errors.add(" ", I18n.t('messages.errorPF_PJ') )
		
		end
	
	end

  	#Método que valida se os campos de telefone (fixo e celular) foi preenchido.
  	def valida_telefone
    	if((tel_cel.blank?) && (tel_fixo.blank?))
      		 errors.add(" ", I18n.t('messages.error'))
    	end

  	end

end
