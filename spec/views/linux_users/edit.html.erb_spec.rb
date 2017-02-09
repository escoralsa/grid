require 'spec_helper'

describe "linux_users/edit" do
  before(:each) do
    @linux_user = assign(:linux_user, stub_model(LinuxUser,
      :user => "MyString",
      :password => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit linux_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linux_user_path(@linux_user), "post" do
      assert_select "input#linux_user_user[name=?]", "linux_user[user]"
      assert_select "input#linux_user_password[name=?]", "linux_user[password]"
      assert_select "input#linux_user_customer[name=?]", "linux_user[customer]"
    end
  end
end
