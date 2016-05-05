require 'spec_helper'

describe "tickets/index" do
  before(:each) do
    assign(:tickets, [
      stub_model(Ticket,
        :contactName => "Contact Name",
        :notes => "MyText",
        :employee => nil,
        :customer => nil,
        :priority => nil,
        :situation => nil,
        :category => nil
      ),
      stub_model(Ticket,
        :contactName => "Contact Name",
        :notes => "MyText",
        :employee => nil,
        :customer => nil,
        :priority => nil,
        :situation => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of tickets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
