require 'rails/railtie'

class Uglifier
  module Rails
    class Railtie < ::Rails::Railtie
      initializer :setup_compressor do |app|
        if app.config.assets.compress
          app.config.assets.js_compressor = Uglifier.new
        end
      end
    end
  end
end
