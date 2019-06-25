json.extract! user, :id, :admin, :nome, :cpf, :cep, :end_logr, :end_num, :end_compl, :end_cid, :end_ug, :tel_fixo, :tel_cel, :dt_nasc, :rg, :rg_emissor, :created_at, :updated_at
json.url user_url(user, format: :json)
