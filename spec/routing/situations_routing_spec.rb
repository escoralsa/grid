require "spec_helper"

describe SituationsController do
  describe "routing" do

    it "routes to #index" do
      get("/situations").should route_to("situations#index")
    end

    it "routes to #new" do
      get("/situations/new").should route_to("situations#new")
    end

    it "routes to #show" do
      get("/situations/1").should route_to("situations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/situations/1/edit").should route_to("situations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/situations").should route_to("situations#create")
    end

    it "routes to #update" do
      put("/situations/1").should route_to("situations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/situations/1").should route_to("situations#destroy", :id => "1")
    end

  end
end
