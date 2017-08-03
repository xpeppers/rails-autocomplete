require 'rails-autocomplete/form_helper'
require 'rails-autocomplete/autocomplete'

module RailsAutocomplete
  autoload :Orm              , 'rails-autocomplete/orm'
  autoload :FormtasticPlugin , 'rails-autocomplete/formtastic_plugin'

  unless ::Rails.version < "3.1"
    require 'rails-autocomplete/rails/engine'
  end
end

class ActionController::Base
  include RailsAutocomplete::Autocomplete
end

require 'rails-autocomplete/formtastic'

begin
  require 'simple_form'
  require 'rails-autocomplete/simple_form_plugin'
rescue LoadError
end
