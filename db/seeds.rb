empresa = Empresa.create({razaoSocial: 'Imobiliaria Gia'})

estado_pr = Estado.create({nome: 'Paraná', uf: 'PR', empresa: empresa})
estado_sc = Estado.create({nome: 'Santa Catarina', uf: 'SC', empresa: empresa})
estado_rs = Estado.create({nome: 'Rio Grande do Sul', uf: 'RS', empresa: empresa})

municipio_toledo = Municipio.create({nome: 'Toledo', estado: estado_pr})
municipio_blum = Municipio.create({nome: 'Blumenau', estado: estado_sc})
municipio_pomer = Municipio.create({nome: 'Pomerode', estado: estado_sc})
municipio_porto_alegre = Municipio.create({nome: 'Porto Alegre', estado: estado_rs})

bairro_la_salle = Bairro.create({nome: 'Jd. la Salle', municipio: municipio_toledo})
bairro_giselle = Bairro.create({nome: 'Jd. Giselle', municipio: municipio_toledo})
bairro_centro = Bairro.create({nome: 'Centro', municipio: municipio_blum})

rua_faculdade = Rua.create({nome: 'Rua da Faculdade', bairro: bairro_la_salle})
rua_brasil = Rua.create({nome: 'Rua da Brasil', bairro: bairro_la_salle})
rua_teste = Rua.create({nome: 'Rua do Teste', bairro: bairro_centro})

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
