# == Schema Information
#
# Table name: locations
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  path       :string(255)
#  parent_id  :integer(4)
#  lft        :integer(4)
#  rgt        :integer(4)
#  page_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Location do
  describe "mass assignment" do
     it "should mass assign name and path" do
       location = Location.new(:name => 'foo', :path => 'bar' )
       location.name.should == 'foo'
       location.path.should == 'bar'
     end
   end

   describe "validations" do
     describe "presence" do
       it "should not create a location with blank name" do
         Factory.build(:location, :name => nil).should_not be_valid
       end
      it "should allow alocation with a name" do
        Factory.build(:location, :name => 'foo').should be_valid
      end
     end
   end

   describe "resolved path" do
     it "should return the page permalink if there's a page foreign key" do
       page = Factory(:page, :permalink => 'some/address')
       loc = Factory(:location, :path => 'foobar')
       loc.page = page
       loc.save!
       loc.resolved_path.should == page.permalink
     end

     it "should return the location's path if there's no page foreign key" do
       loc = Factory(:location, :path => 'foobar')
       loc.resolved_path.should == 'foobar'
     end
   end
end
