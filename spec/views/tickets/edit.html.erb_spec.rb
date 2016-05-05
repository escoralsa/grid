require 'spec_helper'

describe "tickets/edit" do
  before(:each) do
    @ticket = assign(:ticket, stub_model(Ticket,
      :contactName => "MyString",
      :notes => "MyText",
      :employee => nil,
      :customer => nil,
      :priority => nil,
      :situation => nil,
      :category => nil
    ))
  end

  it "renders the edit ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do
      assert_select "input#ticket_contactName[name=?]", "ticket[contactName]"
      assert_select "textarea#ticket_notes[name=?]", "ticket[notes]"
      assert_select "input#ticket_employee[name=?]", "ticket[employee]"
      assert_select "input#ticket_customer[name=?]", "ticket[customer]"
      assert_select "input#ticket_priority[name=?]", "ticket[priority]"
      assert_select "input#ticket_situation[name=?]", "ticket[situation]"
      assert_select "input#ticket_category[name=?]", "ticket[category]"
    end
  end
end
