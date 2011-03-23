class Arquivo
  # ORM
  include Mongoid::Document
  include Mongoid::Paperclip
  
  # Atributos
  field :descricao,       :type => String
  field :data_adicionada, :type => Date
  has_mongoid_attached_file :documento,
                                        :path => ':rails_root/public/data/:attachment/:basename.:extension',
                                        :url  => '/data/:attachment/:basename.:extension'
  
  # Relacionamentos
  embedded_in :concurso, :inverse_of => :arquivos
  
  # Validacoes
  validates :descricao, :presence   => { :limit => 200 },
                        :uniqueness => true
end
