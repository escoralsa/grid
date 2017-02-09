require 'spec_helper'

describe "linux_users/index" do
  before(:each) do
    assign(:linux_users, [
      stub_model(LinuxUser,
        :user => "User",
        :password => "Password",
        :customer => nil
      ),
      stub_model(LinuxUser,
        :user => "User",
        :password => "Password",
        :customer => nil
      )
    ])
  end

  it "renders a list of linux_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
