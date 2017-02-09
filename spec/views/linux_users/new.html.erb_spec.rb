require 'spec_helper'

describe "linux_users/new" do
  before(:each) do
    assign(:linux_user, stub_model(LinuxUser,
      :user => "MyString",
      :password => "MyString",
      :customer => nil
    ).as_new_record)
  end

  it "renders new linux_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linux_users_path, "post" do
      assert_select "input#linux_user_user[name=?]", "linux_user[user]"
      assert_select "input#linux_user_password[name=?]", "linux_user[password]"
      assert_select "input#linux_user_customer[name=?]", "linux_user[customer]"
    end
  end
end
