class Relacionamento
  # ORM
  include Mongoid::Document
  
  # Atributos
  field :nome, :type => String
  
  # Validacoes
  validates :nome, :presence => { :limit => 150 },
                   :uniqueness => true
end
