require 'spec_helper'

describe "candidatos/show.html.erb" do
  before(:each) do
    @candidato = assign(:candidato, stub_model(Candidato,
      :nome => "Nome",
      :nacionalidade => "Nacionalidade",
      :sexo => "Sexo",
      :estado_civil => nil,
      :cpf => "Cpf",
      :endereco => "Endereco",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :telefone => "Telefone",
      :celular => "Celular",
      :email => "Email",
      :semestre => 1,
      :faculdade => nil,
      :pago => false,
      :deferido => false,
      :aprovado => false,
      :concurso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nacionalidade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sexo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Complemento/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Celular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
