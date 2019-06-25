json.extract! customer, :id, :name, :cpf, :cep, :end_logr, :end_num, :end_compl, :tel_fixo, :tel_cel, :tel_trab, :dt_nasc, :email, :rg, :rg_emissor, :created_at, :updated_at
json.url customer_url(customer, format: :json)
