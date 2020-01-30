class ConsultaCep
  def realizar_requisicao
    cep = DADOS[:cep]
    @response = HTTParty.get 'https://viacep.com.br/ws/' + cep + '/json/'
  end

  def consultar_codigo_ibge
    raise 'código IBGE não visualizado' unless @response['ibge'] != ''

    puts @response['ibge']
  end

  def realizar_requisicao_cpf_invalido
    cep_inv = DADOS[:cpf_invalido]
    @response = HTTParty.get 'https://viacep.com.br/ws/' + cep_inv + '/json/'
  end

  def consultar_status_code(status)
    raise 'status code invalido não é 400' unless @response[60,3] == status
  end
end
