lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'fjord'

Gem::Specification.new do |s|
  s.name        = 'fjord'
  s.version     = ::Fjord::VERSION
  s.summary     = "Functional tools for Ruby"
  s.description = s.summary
  s.authors     = ["Daniel Bober"]
  s.email       = 'cardinal.ximinez.again@gmail.com'
  s.files       = ["lib/fjord.rb", "lib/fjord/helpers"]
  s.executables << 'console'
  s.homepage    = 'http://rubygems.org/gems/fjord'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.2.2"

  s.add_development_dependency "minitest", "~> 5.11"
  s.add_development_dependency "rake"
end
