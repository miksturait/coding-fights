require 'spec_helper'

describe "codes/index" do
  before(:each) do
    assign(:codes, [
      stub_model(Code,
        :user => "User",
        :source => "MyText"
      ),
      stub_model(Code,
        :user => "User",
        :source => "MyText"
      )
    ])
  end

  it "renders a list of codes" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
