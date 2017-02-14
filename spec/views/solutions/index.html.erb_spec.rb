require 'spec_helper'

describe "solutions/index" do
  before(:each) do
    assign(:solutions, [
      stub_model(Solution,
        :description => "MyText",
        :file => "File",
        :solution => "MyText"
      ),
      stub_model(Solution,
        :description => "MyText",
        :file => "File",
        :solution => "MyText"
      )
    ])
  end

  it "renders a list of solutions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
