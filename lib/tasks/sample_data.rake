namespace :db do
  namespace :sample_data do
    
    desc "Fill the database with sample data for demo purposes"
    task :load => :environment do   
      require 'populator'
      
      populate_pages
      populate_locations
      populate_images
      populate_documents
      
    end
  end
end
                
  
# Generate some sample pages  
# TODO: finish implementation once the models are created
#
# This can be customized on a per-client basis
def populate_pages    
  pages = [ :about_us, :contact_us ]
  # pages.each do |name|
  #   Page.new( 
  #     :title => name.to_s.titleize, 
  #     :headline => name.to_s.titleize,
  #     :permalink => name.to_s,
  #     :published => true,
  #     :content => Populator.paragraphs(1..5)
  #   )
  # end
end                         

# Generate some sample locations to match the pages a
# TODO: finish implementation once the models are created
#
# This can be customized on a per-client basis
def populate_locations
  locations = {
    :home => { :path => '/' },
    :about_us   => { :page => :about_us ,   :parent => :home  },
    :contact_us => { :page => :contact_us , :parent => :home  }
  }    
  # locations.each do |name, hash|
  #   loc = Location.new(
  #     :name => name
  #   )              
  #   loc.parent = Location.find_by_name(hash[:parent].to_s) if hash[:parent]
  #   loc.page = Page.find_by_title(hash[:page].to_s.titleize) if hash[:page]
  #   loc.path = hash[:path] if hash[:path]
  # end
end
                          

#TODO
def populate_images
end
     
#TODO
def populate_documents
end  