class Relacionamento
  include Mongoid::Document
  field :nome, :type => String

  validates :nome, :presence => { :limit => 150 },
                   :uniqueness => true
end
