require 'spec_helper'

describe "appliances/show" do
  before(:each) do
    @appliance = assign(:appliance, stub_model(Appliance,
      :storeNumbre => 1,
      :name => "Name",
      :intIp => "Int Ip",
      :extIp => "Ext Ip",
      :brand => "Brand",
      :model => "Model",
      :user => "User",
      :password => "Password",
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Int Ip/)
    rendered.should match(/Ext Ip/)
    rendered.should match(/Brand/)
    rendered.should match(/Model/)
    rendered.should match(/User/)
    rendered.should match(/Password/)
    rendered.should match(//)
  end
end
