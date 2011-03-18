require 'spec_helper'

describe "relacionamentos/new.html.erb" do
  before(:each) do
    assign(:relacionamento, stub_model(Relacionamento,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new relacionamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relacionamentos_path, :method => "post" do
      assert_select "input#relacionamento_nome", :name => "relacionamento[nome]"
    end
  end
end
