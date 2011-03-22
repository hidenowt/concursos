require 'spec_helper'

describe "noticias/new.html.erb" do
  before(:each) do
    assign(:noticia, stub_model(Noticia,
      :titulo => "MyString",
      :corpo => "MyText",
      :usuario => nil,
      :concurso => nil
    ).as_new_record)
  end

  it "renders new noticia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => noticias_path, :method => "post" do
      assert_select "input#noticia_titulo", :name => "noticia[titulo]"
      assert_select "textarea#noticia_corpo", :name => "noticia[corpo]"
      assert_select "input#noticia_usuario", :name => "noticia[usuario]"
      assert_select "input#noticia_concurso", :name => "noticia[concurso]"
    end
  end
end
