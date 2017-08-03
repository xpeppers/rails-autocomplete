require 'rubygems'
require 'bundler/setup'
require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

ENV["RAILS_ENV"] = "test"
module Rails
  def self.env
    ActiveSupport::StringInquirer.new("test")
  end
end

require 'rails/all'
require 'shoulda'
require 'rr'
require 'rails/test_help'
require 'rails-autocomplete'

module RailsAutocomplete
  class Application < ::Rails::Application
  end
end

RailsAutocomplete::Application.routes.draw do
  match '/:controller(/:action(/:id))', via: [:get, :post]
end

ActionController::Base.send :include, RailsAutocomplete::Application.routes.url_helpers

class Test::Unit::TestCase

end

