require 'spec_helper'

describe "relacionamentos/edit.html.erb" do
  before(:each) do
    @relacionamento = assign(:relacionamento, stub_model(Relacionamento,
      :nome => "MyString"
    ))
  end

  it "renders the edit relacionamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relacionamentos_path(@relacionamento), :method => "post" do
      assert_select "input#relacionamento_nome", :name => "relacionamento[nome]"
    end
  end
end
