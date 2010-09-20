require 'spec_helper'

describe Admin::Upload::DocumentsController do
  include DocumentTestHelper

  before(:each) do
    @document = Factory(:document)
  end

  ########################################################################################
  #                                      GET INDEX
  ########################################################################################
  describe "GET index" do
    it "should expose all admin_upload_documents as @documents" do
      get :index
      assigns[:documents].should == [@document]
    end
  end

  ########################################################################################
  #                                      GET SHOW
  ########################################################################################
  describe "responding to GET show" do
    it "should expose the requested document as @document" do
      get :show, :id => @document.id
      assigns[:document].should == @document
    end  
  end

  ########################################################################################
  #                                      GET NEW
  ########################################################################################
  describe "responding to GET new" do  
    it "should expose a new document as @document" do
      get :new
      assigns[:document].should be_a(Admin::Upload::Document)
      assigns[:document].should be_new_record
    end
  end

  #######################################################################################
  #                                      POST CREATE
  ########################################################################################
  describe "responding to POST create" do

    describe "with valid params" do
      before(:each) do
        @doc = mock_document(:save => true)
        Admin::Upload::Document.should_receive(:new).with({'these' => 'params'}).and_return(@doc)
        post :create, :admin_upload_document => {:these => 'params'}
      end
      
      it "should create a new document and expose it" do
        assigns(:admin_upload_document).should equal(@doc)
      end

      it "should redirect to the created document" do
        response.should redirect_to(admin_upload_document_url(@doc))
      end      
    end

  end
  ########################################################################################
  #                                      DELETE DESTROY
  ########################################################################################
  describe "DELETE destroy" do

    it "should reduce document count by one" do
      lambda do
        delete :destroy, :id => @document.id
      end.should change(Admin::Upload::Document, :count).by(-1)
    end
    
    it "should make the admin_upload_documents unfindable in the database" do    
      delete :destroy, :id => @document.id
      lambda{ Admin::Upload::Document.find(@document.id)}.should raise_error(ActiveRecord::RecordNotFound)      
    end
  
    it "should redirect to the admin_upload_documents list" do
      delete :destroy, :id => @document.id
      response.should redirect_to(admin_upload_documents_url)
    end
  end

end