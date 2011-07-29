module Thickbox
  class Engine < Rails::Engine
    config.to_prepare do
      # ApplicationController.helper(ActionView::Helpers::SwfFuHelper)
    end  
  end
end
