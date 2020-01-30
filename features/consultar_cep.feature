# language: pt
Funcionalidade: Consultar CEP
  Eu como usuário quero realizar requisição na api,
  afim de consultar os dados de um endereço apartir
  de um cep

Cenário: Visualizar código IBGE de um CEP
  Dado que realizar uma requisição GET no CEP
  Então código IBGE do CEP é visualizado

Cenário: Realizar consulta de um CEP inválido
  Dado realizar uma requisição GET no CEP inválido
  Então status code é '400'