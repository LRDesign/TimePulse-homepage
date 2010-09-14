raise "loading lrd haml generator"

module Rails
  module Generators
    class Haml < Base 
      p "defining the haml scaffold generator"
      
      include Rails::Generators::ResourceHelpers

      def create_root_folder
        empty_directory File.join("app/views", controller_file_path)
      end

      def copy_view_files
        available_views.each do |view|
          filename = filename_with_extensions(view)
          template filename, File.join("app/views", controller_file_path, filename)
        end
      end

      protected

        def available_views
          %w(index edit show new _form)
        end
    end
  
    p Haml.namespace
  end
end