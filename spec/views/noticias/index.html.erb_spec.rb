require 'spec_helper'

describe "noticias/index.html.erb" do
  before(:each) do
    assign(:noticias, [
      stub_model(Noticia,
        :titulo => "Titulo",
        :corpo => "MyText",
        :usuario => nil,
        :concurso => nil
      ),
      stub_model(Noticia,
        :titulo => "Titulo",
        :corpo => "MyText",
        :usuario => nil,
        :concurso => nil
      )
    ])
  end

  it "renders a list of noticias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
