require 'rails'
require 'ember/auth/module/ember_model/source'
require 'ember/auth/module/ember_model/rails/version'
require 'ember/auth/module/ember_model/rails/engine'

module Ember
  module Auth
    module Module
      module EmberModel
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.ember-model.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::EmberModel::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
