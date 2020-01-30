Dado('que realizar uma requisição GET no CEP') do
  @teste = ConsultaCep.new
  @teste.realizar_requisicao
end

Então("código IBGE do CEP é visualizado") do
  @teste.consultar_codigo_ibge
end

Dado("realizar uma requisição GET no CEP inválido") do
  @status_code = ConsultaCep.new
  @status_code.realizar_requisicao_cpf_invalido
end

Então("status code é {string}") do |status|
  @status_code.consultar_status_code(status)
end
