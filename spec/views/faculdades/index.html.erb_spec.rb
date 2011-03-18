require 'spec_helper'

describe "faculdades/index.html.erb" do
  before(:each) do
    assign(:faculdades, [
      stub_model(Faculdade,
        :nome => "Nome"
      ),
      stub_model(Faculdade,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of faculdades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
