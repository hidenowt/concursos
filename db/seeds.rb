# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
[
  "Universidade Federal do Ceará - UFC",
  "Universidade Estadual do Ceará - UECE",
  "Instituto Federal de Educação, Ciência e Tecnológia do Ceará - IFCE",
  "Universidade de Fortaleza - UNIFOR",
  "Faculdade Integrada do Ceará - FIC",
  "Faculdade Christus - FC",
  "Faculdade Farias Brito - FFB",
  "Faculdade Lourenço Filho - FLF",
  "Faculdade Cearense - FAC",
  "Faculdade Nordeste - FANOR"
].each do |f|
  Faculdade.create!(:nome => f)
end

[
  "Solteiro(a)",
  "Casado(a)",
  "Viúvo(a)",
  "Divorciado(a)",
  "Separado(a) Judicialmente"
].each do |r|
  Relacionamento.create!(:nome => r)
end