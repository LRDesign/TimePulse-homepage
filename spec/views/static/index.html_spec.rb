require 'spec_helper'

describe "/static/index" do
  before :each do
    assign(:page, @page = FactoryGirl.build(:page))
  end

  it "should succeed" do
    render
  end
end

