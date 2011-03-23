require "spec_helper"

describe CandidatosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/candidatos" }.should route_to(:controller => "candidatos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/candidatos/new" }.should route_to(:controller => "candidatos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/candidatos/1" }.should route_to(:controller => "candidatos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/candidatos/1/edit" }.should route_to(:controller => "candidatos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/candidatos" }.should route_to(:controller => "candidatos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/candidatos/1" }.should route_to(:controller => "candidatos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/candidatos/1" }.should route_to(:controller => "candidatos", :action => "destroy", :id => "1")
    end

  end
end
