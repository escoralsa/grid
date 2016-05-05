require 'spec_helper'

describe "devices/index" do
  before(:each) do
    assign(:devices, [
      stub_model(Device,
        :storeNumbre => 1,
        :name => "Name",
        :intIp => "Int Ip",
        :extIp => "Ext Ip",
        :brand => "Brand",
        :model => "Model",
        :user => "User",
        :password => "Password",
        :customer => nil
      ),
      stub_model(Device,
        :storeNumbre => 1,
        :name => "Name",
        :intIp => "Int Ip",
        :extIp => "Ext Ip",
        :brand => "Brand",
        :model => "Model",
        :user => "User",
        :password => "Password",
        :customer => nil
      )
    ])
  end

  it "renders a list of devices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Int Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Ext Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
