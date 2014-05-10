require 'spec_helper'

describe "codes/edit" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :user => "MyString",
      :source => "MyText"
    ))
  end

  it "renders the edit code form" do
    render

    assert_select "form[action=?][method=?]", code_path(@code), "post" do
      assert_select "input#code_user[name=?]", "code[user]"
      assert_select "textarea#code_source[name=?]", "code[source]"
    end
  end
end
