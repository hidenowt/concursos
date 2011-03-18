class Faculdade
  include Mongoid::Document
  field :nome, :type => String
  
  validates :nome, :presence => { :limit => 200 },
                   :uniqueness => true
end
