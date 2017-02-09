require 'spec_helper'

describe "linux_users/show" do
  before(:each) do
    @linux_user = assign(:linux_user, stub_model(LinuxUser,
      :user => "User",
      :password => "Password",
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    rendered.should match(/Password/)
    rendered.should match(//)
  end
end
