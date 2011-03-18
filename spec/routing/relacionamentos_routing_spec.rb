require "spec_helper"

describe RelacionamentosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/relacionamentos" }.should route_to(:controller => "relacionamentos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/relacionamentos/new" }.should route_to(:controller => "relacionamentos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/relacionamentos/1" }.should route_to(:controller => "relacionamentos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/relacionamentos/1/edit" }.should route_to(:controller => "relacionamentos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/relacionamentos" }.should route_to(:controller => "relacionamentos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/relacionamentos/1" }.should route_to(:controller => "relacionamentos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/relacionamentos/1" }.should route_to(:controller => "relacionamentos", :action => "destroy", :id => "1")
    end

  end
end
