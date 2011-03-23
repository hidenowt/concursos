require 'spec_helper'

describe "candidatos/new.html.erb" do
  before(:each) do
    assign(:candidato, stub_model(Candidato,
      :nome => "MyString",
      :nacionalidade => "MyString",
      :sexo => "MyString",
      :estado_civil => nil,
      :cpf => "MyString",
      :endereco => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :telefone => "MyString",
      :celular => "MyString",
      :email => "MyString",
      :semestre => 1,
      :faculdade => nil,
      :pago => false,
      :deferido => false,
      :aprovado => false,
      :concurso => nil
    ).as_new_record)
  end

  it "renders new candidato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candidatos_path, :method => "post" do
      assert_select "input#candidato_nome", :name => "candidato[nome]"
      assert_select "input#candidato_nacionalidade", :name => "candidato[nacionalidade]"
      assert_select "input#candidato_sexo", :name => "candidato[sexo]"
      assert_select "input#candidato_estado_civil", :name => "candidato[estado_civil]"
      assert_select "input#candidato_cpf", :name => "candidato[cpf]"
      assert_select "input#candidato_endereco", :name => "candidato[endereco]"
      assert_select "input#candidato_complemento", :name => "candidato[complemento]"
      assert_select "input#candidato_bairro", :name => "candidato[bairro]"
      assert_select "input#candidato_telefone", :name => "candidato[telefone]"
      assert_select "input#candidato_celular", :name => "candidato[celular]"
      assert_select "input#candidato_email", :name => "candidato[email]"
      assert_select "input#candidato_semestre", :name => "candidato[semestre]"
      assert_select "input#candidato_faculdade", :name => "candidato[faculdade]"
      assert_select "input#candidato_pago", :name => "candidato[pago]"
      assert_select "input#candidato_deferido", :name => "candidato[deferido]"
      assert_select "input#candidato_aprovado", :name => "candidato[aprovado]"
      assert_select "input#candidato_concurso", :name => "candidato[concurso]"
    end
  end
end
