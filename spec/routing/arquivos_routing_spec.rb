require "spec_helper"

describe ArquivosController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/arquivos" }.should route_to(:controller => "arquivos", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/arquivos/new" }.should route_to(:controller => "arquivos", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/arquivos/1" }.should route_to(:controller => "arquivos", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/arquivos/1/edit" }.should route_to(:controller => "arquivos", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/arquivos" }.should route_to(:controller => "arquivos", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/arquivos/1" }.should route_to(:controller => "arquivos", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/arquivos/1" }.should route_to(:controller => "arquivos", :action => "destroy", :id => "1")
    end

  end
end
