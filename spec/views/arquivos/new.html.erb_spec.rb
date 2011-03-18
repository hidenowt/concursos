require 'spec_helper'

describe "arquivos/new.html.erb" do
  before(:each) do
    assign(:arquivo, stub_model(Arquivo,
      :descricao => "MyString",
      :concursos => nil
    ).as_new_record)
  end

  it "renders new arquivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => arquivos_path, :method => "post" do
      assert_select "input#arquivo_descricao", :name => "arquivo[descricao]"
      assert_select "input#arquivo_concursos", :name => "arquivo[concursos]"
    end
  end
end
