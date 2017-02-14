require 'spec_helper'

describe "pace_program_customers/show" do
  before(:each) do
    @pace_program_customer = assign(:pace_program_customer, stub_model(PaceProgramCustomer,
      :customer => nil,
      :paceProgram => nil,
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
