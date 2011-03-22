require 'spec_helper'

describe "concursos/index.html.erb" do
  before(:each) do
    assign(:concursos, [
      stub_model(Concurso,
        :titulo => "Titulo"
      ),
      stub_model(Concurso,
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of concursos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
