require 'spec_helper'

describe "faculdades/edit.html.erb" do
  before(:each) do
    @faculdade = assign(:faculdade, stub_model(Faculdade,
      :nome => "MyString"
    ))
  end

  it "renders the edit faculdade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => faculdades_path(@faculdade), :method => "post" do
      assert_select "input#faculdade_nome", :name => "faculdade[nome]"
    end
  end
end
