require 'spec_helper'

describe "arquivos/index.html.erb" do
  before(:each) do
    assign(:arquivos, [
      stub_model(Arquivo,
        :descricao => "Descricao",
        :concursos => nil
      ),
      stub_model(Arquivo,
        :descricao => "Descricao",
        :concursos => nil
      )
    ])
  end

  it "renders a list of arquivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
