require 'spec_helper'

describe "relacionamentos/show.html.erb" do
  before(:each) do
    @relacionamento = assign(:relacionamento, stub_model(Relacionamento,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
