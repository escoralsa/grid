require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :customer => nil
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input#contact_name[name=?]", "contact[name]"
      assert_select "input#contact_phone[name=?]", "contact[phone]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_customer[name=?]", "contact[customer]"
    end
  end
end
