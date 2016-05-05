require 'spec_helper'

describe "customers/edit" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :adress => "MyText",
      :phone => "MyString",
      :contact => "MyString",
      :rfc => "MyString",
      :email => "MyString",
      :ip => "MyString",
      :server => "MyText",
      :datacenter => false,
      :vpacesetter => "MyString",
      :vprogress => "MyString",
      :userNumber => 1,
      :catalog => "MyString",
      :softwareC => "MyString",
      :programesp => "MyText",
      :emailpdf => "MyText",
      :emailxml => "MyText",
      :pdf => false
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "textarea#customer_adress[name=?]", "customer[adress]"
      assert_select "input#customer_phone[name=?]", "customer[phone]"
      assert_select "input#customer_contact[name=?]", "customer[contact]"
      assert_select "input#customer_rfc[name=?]", "customer[rfc]"
      assert_select "input#customer_email[name=?]", "customer[email]"
      assert_select "input#customer_ip[name=?]", "customer[ip]"
      assert_select "textarea#customer_server[name=?]", "customer[server]"
      assert_select "input#customer_datacenter[name=?]", "customer[datacenter]"
      assert_select "input#customer_vpacesetter[name=?]", "customer[vpacesetter]"
      assert_select "input#customer_vprogress[name=?]", "customer[vprogress]"
      assert_select "input#customer_userNumber[name=?]", "customer[userNumber]"
      assert_select "input#customer_catalog[name=?]", "customer[catalog]"
      assert_select "input#customer_softwareC[name=?]", "customer[softwareC]"
      assert_select "textarea#customer_programesp[name=?]", "customer[programesp]"
      assert_select "textarea#customer_emailpdf[name=?]", "customer[emailpdf]"
      assert_select "textarea#customer_emailxml[name=?]", "customer[emailxml]"
      assert_select "input#customer_pdf[name=?]", "customer[pdf]"
    end
  end
end
