require 'spec_helper'

describe "faculdades/new.html.erb" do
  before(:each) do
    assign(:faculdade, stub_model(Faculdade,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new faculdade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => faculdades_path, :method => "post" do
      assert_select "input#faculdade_nome", :name => "faculdade[nome]"
    end
  end
end
