# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-autocomplete/version"

Gem::Specification.new do |s|
  s.name = %q{rails-autocomplete}
  s.version = RailsAutocomplete::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["David Padilla", "Joiey Seeley", "Sundus Yousuf", "XPeppers"]
  s.email = %q{david@padilla.cc joiey.seeley@gmail.com sundusahmedyousuf@gmail.com orione-team@xpeppers.com}
  s.summary = %q{Use jQuery's autocomplete plugin with Rails 4+.}
  s.homepage = %q{https://github.com/xpeppers/rails-jquery-autocomplete/}
  s.description = %q{Use jQuery's autocomplete plugin with Rails 4+.}
  s.license = %q{MIT}

  s.add_dependency('rails', '>= 4.0')

  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'bson_ext'
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'uglifier'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'simple_form'

  s.files         = Dir['lib/**/*'] + %w{CHANGELOG.md LICENSE README.md Rakefile}
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

