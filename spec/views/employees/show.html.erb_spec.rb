require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "Name",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
  end
end
