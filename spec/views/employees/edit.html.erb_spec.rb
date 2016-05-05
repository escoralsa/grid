require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do
      assert_select "input#employee_name[name=?]", "employee[name]"
      assert_select "input#employee_email[name=?]", "employee[email]"
      assert_select "input#employee_phone[name=?]", "employee[phone]"
    end
  end
end
