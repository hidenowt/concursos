class Concurso
  # ORM
  include Mongoid::Document
  
  # Atributos
  field :titulo,            :type => String
  field :inicio_inscricoes, :type => Date
  field :fim_inscricoes,    :type => Date
  field :data_prova,        :type => Date
  field :data_resultado,    :type => Date
  
  # Relacionamentos
  embeds_many :arquivos
  
  # Validacoes
  validates :titulo, :presence => { :limit => 100 }
end
