require 'spec_helper'

describe "attacheds/show" do
  before(:each) do
    @attached = assign(:attached, stub_model(Attached,
      :description => "Description",
      :file => "File",
      :ticket => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/File/)
    rendered.should match(//)
  end
end
