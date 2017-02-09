require "spec_helper"

describe LinuxUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/linux_users").should route_to("linux_users#index")
    end

    it "routes to #new" do
      get("/linux_users/new").should route_to("linux_users#new")
    end

    it "routes to #show" do
      get("/linux_users/1").should route_to("linux_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/linux_users/1/edit").should route_to("linux_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/linux_users").should route_to("linux_users#create")
    end

    it "routes to #update" do
      put("/linux_users/1").should route_to("linux_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/linux_users/1").should route_to("linux_users#destroy", :id => "1")
    end

  end
end
