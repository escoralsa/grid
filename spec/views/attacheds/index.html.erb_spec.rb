require 'spec_helper'

describe "attacheds/index" do
  before(:each) do
    assign(:attacheds, [
      stub_model(Attached,
        :description => "Description",
        :file => "File",
        :ticket => nil
      ),
      stub_model(Attached,
        :description => "Description",
        :file => "File",
        :ticket => nil
      )
    ])
  end

  it "renders a list of attacheds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
