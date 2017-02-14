require 'spec_helper'

describe "pace_programs/show" do
  before(:each) do
    @pace_program = assign(:pace_program, stub_model(PaceProgram,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
  end
end
