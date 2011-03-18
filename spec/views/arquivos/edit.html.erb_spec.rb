require 'spec_helper'

describe "arquivos/edit.html.erb" do
  before(:each) do
    @arquivo = assign(:arquivo, stub_model(Arquivo,
      :descricao => "MyString",
      :concursos => nil
    ))
  end

  it "renders the edit arquivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => arquivos_path(@arquivo), :method => "post" do
      assert_select "input#arquivo_descricao", :name => "arquivo[descricao]"
      assert_select "input#arquivo_concursos", :name => "arquivo[concursos]"
    end
  end
end
