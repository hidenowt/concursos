require 'spec_helper'

describe "concursos/new.html.erb" do
  before(:each) do
    assign(:concurso, stub_model(Concurso,
      :titulo => "MyString"
    ).as_new_record)
  end

  it "renders new concurso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => concursos_path, :method => "post" do
      assert_select "input#concurso_titulo", :name => "concurso[titulo]"
    end
  end
end
