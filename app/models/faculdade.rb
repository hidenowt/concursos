class Faculdade
  # ORM
  include Mongoid::Document
  
  # Atributos
  field :nome, :type => String
  
  # Validacoes
  validates :nome, :presence => { :limit => 200 },
                   :uniqueness => true
end
