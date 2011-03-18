require 'spec_helper'

describe "relacionamentos/index.html.erb" do
  before(:each) do
    assign(:relacionamentos, [
      stub_model(Relacionamento,
        :nome => "Nome"
      ),
      stub_model(Relacionamento,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of relacionamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
