require 'spec_helper'

describe "appliances/edit" do
  before(:each) do
    @appliance = assign(:appliance, stub_model(Appliance,
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

  it "renders the edit appliance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", appliance_path(@appliance), "post" do
      assert_select "input#appliance_storeNumbre[name=?]", "appliance[storeNumbre]"
      assert_select "input#appliance_name[name=?]", "appliance[name]"
      assert_select "input#appliance_intIp[name=?]", "appliance[intIp]"
      assert_select "input#appliance_extIp[name=?]", "appliance[extIp]"
      assert_select "input#appliance_brand[name=?]", "appliance[brand]"
      assert_select "input#appliance_model[name=?]", "appliance[model]"
      assert_select "input#appliance_user[name=?]", "appliance[user]"
      assert_select "input#appliance_password[name=?]", "appliance[password]"
      assert_select "input#appliance_customer[name=?]", "appliance[customer]"
    end
  end
end
