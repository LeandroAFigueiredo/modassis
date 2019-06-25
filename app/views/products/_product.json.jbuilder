json.extract! product, :id, :referencia, :descricao, :tamanho, :cor, :provider_id, :created_at, :updated_at
json.url product_url(product, format: :json)
