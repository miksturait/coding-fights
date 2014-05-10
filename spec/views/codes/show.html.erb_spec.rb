require 'spec_helper'

describe "codes/show" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :user => "User",
      :source => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/MyText/)
  end
end
