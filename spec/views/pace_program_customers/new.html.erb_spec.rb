require 'spec_helper'

describe "pace_program_customers/new" do
  before(:each) do
    assign(:pace_program_customer, stub_model(PaceProgramCustomer,
      :customer => nil,
      :paceProgram => nil,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new pace_program_customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pace_program_customers_path, "post" do
      assert_select "input#pace_program_customer_customer[name=?]", "pace_program_customer[customer]"
      assert_select "input#pace_program_customer_paceProgram[name=?]", "pace_program_customer[paceProgram]"
      assert_select "textarea#pace_program_customer_note[name=?]", "pace_program_customer[note]"
    end
  end
end
