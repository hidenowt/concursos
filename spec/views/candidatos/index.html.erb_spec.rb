require 'spec_helper'

describe "candidatos/index.html.erb" do
  before(:each) do
    assign(:candidatos, [
      stub_model(Candidato,
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
      ),
      stub_model(Candidato,
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
      )
    ])
  end

  it "renders a list of candidatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nacionalidade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
