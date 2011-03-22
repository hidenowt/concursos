require 'spec_helper'

describe "concursos/show.html.erb" do
  before(:each) do
    @concurso = assign(:concurso, stub_model(Concurso,
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
  end
end
