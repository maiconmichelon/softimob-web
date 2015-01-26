# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
empresa = Empresa.create({razaoSocial: 'Imobiliaria Gia', cnpj: '88888888'})

estado = Estado.create({nome: 'Paraná', uf: 'PR', empresa: empresa})
municipio = Municipio.create({nome: 'Toledo', estado: estado})
bairro = Bairro.create({nome: 'Jd. la Salle', municipio: municipio})
rua = Rua.create({nome: 'Rua da Faculdade', bairro: bairro})

tipoImovel = TipoImovel.create({nome: 'Apartamento', empresa: empresa})
tipoComodo = TipoComodo.create({nome: 'Quartos', empresa: empresa})

endereco_cliente = Endereco.create({rua_id: 1, cep: '12345678', numero: '123'})
cliente = Cliente.create({nome: 'Cliente', telefone: '1234567890', email: 'cliente@gmail.com',
  dataNascimento: Time.now, empresa: empresa, endereco: endereco_cliente
})

departamento = Departamento.create({empresa: empresa, nome: 'Vendedores'})
endereco_funcionario = Endereco.create({rua_id: 1, cep: '72189371', numero: '413'})
funcionario = Funcionario.create({nome: 'Funcionário', telefone: '1234567890', email: 'funcionario@gmail.com',
  dataNascimento: Time.now, empresa: empresa, endereco: endereco_funcionario, departamento: departamento,
  dataAdmissao: Time.now
})

endereco_pf = Endereco.create({rua_id: 1, cep: '83123232', numero: '13'})
pessoa_fisica = PessoaFisica.create({nome: 'Pessoa Física', telefone: '1234567890',
  email: 'pf@gmail.com', dataNascimento: Time.now, empresa: empresa, endereco: endereco_pf,
  cpf: '12345678901', rg: '123456', filiacao: 'Joao Michelon', estadoCivil: 1, nacionalidade: 'Italiano'
})

endereco_pj = Endereco.create({rua_id: 1, cep: '23142000', numero: '948'})
pessoa_juridica = PessoaJuridica.create({nome: 'Pessoa Jurídica', telefone: '1234567890', email: 'pj@gmail.com',
  dataNascimento: Time.now, empresa: empresa, endereco: endereco_pj, cnpj: '12345678901', inscricaoEstadual: '12321413',
  socioProprietario: pessoa_fisica
})
