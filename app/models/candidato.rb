class Candidato
  # ORM
  include Mongoid::Document
  
  # Atributos
  field :nome,            :type => String
  field :data_nascimento, :type => Date
  field :nacionalidade,   :type => String
  field :sexo,            :type => String
  field :cpf,             :type => String
  field :endereco,        :type => String
  field :complemento,     :type => String
  field :bairro,          :type => String
  field :telefone,        :type => String
  field :celular,         :type => String
  field :email,           :type => String
  field :semestre,        :type => Integer
  field :pago,            :type => Boolean
  field :deferido,        :type => Boolean
  field :aprovado,        :type => Boolean
  field :data_inscricao,  :type => Time
  field :data_pagamento,  :type => Time
  
  # Relacionamentos
  embedded_in :estado_civil, :inverse_of => :candidatos
  embedded_in :faculdade,    :inverse_of => :candidatos
  embedded_in :concurso,     :inverse_of => :candidatos
end
