require "spec_helper"

describe FlashMessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/flash_messages").should route_to("flash_messages#index")
    end

    it "routes to #new" do
      get("/flash_messages/new").should route_to("flash_messages#new")
    end

    it "routes to #show" do
      get("/flash_messages/1").should route_to("flash_messages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flash_messages/1/edit").should route_to("flash_messages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flash_messages").should route_to("flash_messages#create")
    end

    it "routes to #update" do
      put("/flash_messages/1").should route_to("flash_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flash_messages/1").should route_to("flash_messages#destroy", :id => "1")
    end

  end
end
