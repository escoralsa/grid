require 'spec_helper'

describe "pace_program_customers/index" do
  before(:each) do
    assign(:pace_program_customers, [
      stub_model(PaceProgramCustomer,
        :customer => nil,
        :paceProgram => nil,
        :note => "MyText"
      ),
      stub_model(PaceProgramCustomer,
        :customer => nil,
        :paceProgram => nil,
        :note => "MyText"
      )
    ])
  end

  it "renders a list of pace_program_customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
