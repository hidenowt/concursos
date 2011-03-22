class Noticia
  # ORM
  include Mongoid::Document
  
  # Atributos
  field :titulo, :type => String
  field :corpo, :type => String
  field :data, :type => Time
  
  # Relacionamentos
  embedded_in :usuario, :inverse_of => :noticias
  embedded_in :concurso, :inverse_of => :noticias
end
