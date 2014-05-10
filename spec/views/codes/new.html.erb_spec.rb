require 'spec_helper'

describe "codes/new" do
  before(:each) do
    assign(:code, stub_model(Code,
      :user => "MyString",
      :source => "MyText"
    ).as_new_record)
  end

  it "renders new code form" do
    render

    assert_select "form[action=?][method=?]", codes_path, "post" do
      assert_select "input#code_user[name=?]", "code[user]"
      assert_select "textarea#code_source[name=?]", "code[source]"
    end
  end
end
