require 'spec_helper'

describe "concursos/edit.html.erb" do
  before(:each) do
    @concurso = assign(:concurso, stub_model(Concurso,
      :titulo => "MyString"
    ))
  end

  it "renders the edit concurso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => concursos_path(@concurso), :method => "post" do
      assert_select "input#concurso_titulo", :name => "concurso[titulo]"
    end
  end
end
