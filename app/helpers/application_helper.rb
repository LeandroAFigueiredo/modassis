module ApplicationHelper

	ESTADOS_BRASILEIROS = [
    ["Selecione um Estado" ,""],    
    ["Acre", "AC"],
    ["Alagoas", "AL"],
    ["Amapá", "AP"],
    ["Amazonas", "AM"],
    ["Bahia", "BA"],
    ["Ceará", "CE"],
    ["Distrito Federal", "DF"],
    ["Espírito Santo", "ES"],
    ["Goiás", "GO"],
    ["Maranhão", "MA"],
    ["Mato Grosso", "MT"],
    ["Mato Grosso do Sul", "MS"],
    ["Minas Gerais", "MG"],
    ["Pará", "PA"],
    ["Paraíba", "PB"],
    ["Paraná", "PR"],
    ["Pernambuco", "PE"],
    ["Piauí", "PI"],
    ["Rio de Janeiro", "RJ"],
    ["Rio Grande do Norte", "RN"],
    ["Rio Grande do Sul", "RS"],
    ["Rondônia", "RO"],
    ["Roraima", "RR"],
    ["Santa Catarina", "SC"],
    ["São Paulo", "SP"],
    ["Sergipe", "SE"],
    ["Tocantins", "TO"]
  ]

  #Mostra as UF's
  def options_for_states(selected)
    options_for_select(ESTADOS_BRASILEIROS, selected)
  end
  
  #Mostra o número do CPF com máscara (xxx.xxx.xxx-xx)
    def format_cpf(cpf)
        CPF.new(cpf).formatted
    end

    #Mostra o número do CPF com máscara (xx.xxx.xxx/xxxx-xx)
    def format_cnpj(cnpj)
        CNPJ.new(cnpj).formatted
    end

    TAMANHO = [
        ["36","36"],
        ["38","38"],
        ["40","40"],
        ["42","42"],
        ["44","44"],
        ["46","46"],
        ["48","48"],
        ["50","50"]
    ]
    #Mostrar os Tamanhos
    def options_for_size(selected)	
        options_for_select(TAMANHO, selected)
    end

end
