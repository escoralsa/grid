require 'spec_helper'

describe "devices/edit" do
  before(:each) do
    @device = assign(:device, stub_model(Device,
      :storeNumbre => 1,
      :name => "MyString",
      :intIp => "MyString",
      :extIp => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :user => "MyString",
      :password => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit device form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", device_path(@device), "post" do
      assert_select "input#device_storeNumbre[name=?]", "device[storeNumbre]"
      assert_select "input#device_name[name=?]", "device[name]"
      assert_select "input#device_intIp[name=?]", "device[intIp]"
      assert_select "input#device_extIp[name=?]", "device[extIp]"
      assert_select "input#device_brand[name=?]", "device[brand]"
      assert_select "input#device_model[name=?]", "device[model]"
      assert_select "input#device_user[name=?]", "device[user]"
      assert_select "input#device_password[name=?]", "device[password]"
      assert_select "input#device_customer[name=?]", "device[customer]"
    end
  end
end
