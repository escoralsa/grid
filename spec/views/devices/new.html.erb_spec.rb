require 'spec_helper'

describe "devices/new" do
  before(:each) do
    assign(:device, stub_model(Device,
      :storeNumbre => 1,
      :name => "MyString",
      :intIp => "MyString",
      :extIp => "MyString",
      :brand => "MyString",
      :model => "MyString",
      :user => "MyString",
      :password => "MyString",
      :customer => nil
    ).as_new_record)
  end

  it "renders new device form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", devices_path, "post" do
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
