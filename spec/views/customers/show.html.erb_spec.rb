require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Phone/)
    rendered.should match(/Contact/)
    rendered.should match(/Rfc/)
    rendered.should match(/Email/)
    rendered.should match(/Ip/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Vpacesetter/)
    rendered.should match(/Vprogress/)
    rendered.should match(/1/)
    rendered.should match(/Catalog/)
    rendered.should match(/Software C/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
