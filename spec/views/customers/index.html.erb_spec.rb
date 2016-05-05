require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :name => "Name",
        :adress => "MyText",
        :phone => "Phone",
        :contact => "Contact",
        :rfc => "Rfc",
        :email => "Email",
        :ip => "Ip",
        :server => "MyText",
        :datacenter => false,
        :vpacesetter => "Vpacesetter",
        :vprogress => "Vprogress",
        :userNumber => 1,
        :catalog => "Catalog",
        :softwareC => "Software C",
        :programesp => "MyText",
        :emailpdf => "MyText",
        :emailxml => "MyText",
        :pdf => false
      ),
      stub_model(Customer,
        :name => "Name",
        :adress => "MyText",
        :phone => "Phone",
        :contact => "Contact",
        :rfc => "Rfc",
        :email => "Email",
        :ip => "Ip",
        :server => "MyText",
        :datacenter => false,
        :vpacesetter => "Vpacesetter",
        :vprogress => "Vprogress",
        :userNumber => 1,
        :catalog => "Catalog",
        :softwareC => "Software C",
        :programesp => "MyText",
        :emailpdf => "MyText",
        :emailxml => "MyText",
        :pdf => false
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Rfc".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Vpacesetter".to_s, :count => 2
    assert_select "tr>td", :text => "Vprogress".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Catalog".to_s, :count => 2
    assert_select "tr>td", :text => "Software C".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
