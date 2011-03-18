require 'spec_helper'

describe "faculdades/show.html.erb" do
  before(:each) do
    @faculdade = assign(:faculdade, stub_model(Faculdade,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
