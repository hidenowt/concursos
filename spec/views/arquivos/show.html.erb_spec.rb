require 'spec_helper'

describe "arquivos/show.html.erb" do
  before(:each) do
    @arquivo = assign(:arquivo, stub_model(Arquivo,
      :descricao => "Descricao",
      :concursos => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
