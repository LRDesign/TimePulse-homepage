require 'spec_helper'

describe StaticController do
  before :each do
    @page = FactoryGirl.create(:page, :permalink => 'home')
  end

  it "should successfully respond to the index action" do
    get :index
    response.should be_success
  end
end