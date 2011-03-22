require 'spec_helper'

describe "noticias/show.html.erb" do
  before(:each) do
    @noticia = assign(:noticia, stub_model(Noticia,
      :titulo => "Titulo",
      :corpo => "MyText",
      :usuario => nil,
      :concurso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
