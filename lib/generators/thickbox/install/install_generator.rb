module Thickbox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Generates public files like stylsheets, etc."
           
      source_root File.expand_path('../../../../../public/', __FILE__)
 
      def generate_jquery
        generate "jquery:install"
      end    
      
      def generate_javascripts
        copy_file "javascripts/thickbox.js", "public/javascripts/thickbox.js"
      end      
      
      def generate_stylesheets
        copy_file "stylesheets/thickbox.css", "public/stylesheets/thickbox.css"
      end
      
      def generate_images
        copy_file "images/loadingAnimation.gif", "public/images/loadingAnimation.gif"
      end      
      
      def generate_javascript_tags
        inject_into_file "app/views/layouts/application.html.erb", :after => "<%= stylesheet_link_tag :all %>\n" do
          "  <%= stylesheet_link_tag 'thickbox' %>\n"
        end
      end  
      
      def generate_stylesheet_tags
        inject_into_file "app/views/layouts/application.html.erb", :after => "<%= javascript_include_tag :defaults %>\n" do
          "  <%= javascript_include_tag 'thickbox' %>\n"
        end
      end    
    end
  end
end
      
