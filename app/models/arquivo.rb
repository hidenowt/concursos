class Arquivo
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :descricao, :type => String
  field :data_adicionada, :type => Date
  has_mongoid_attached_file :documento,
                                        :path => ':rails_root/public/data/:attachment/:basename.:extension',
                                        :url  => '/data/:attachment/:basename.:extension'
  
  #embedded_in :concursos, :inverse_of => :arquivos
  
  validates :descricao, :presence => { :limit => 200 },
                        :uniqueness => true
end
