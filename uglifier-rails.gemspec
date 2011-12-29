# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "uglifier/rails/version"

Gem::Specification.new do |s|
  s.name        = "uglifier-rails"
  s.version     = Uglifier::Rails::VERSION
  s.authors     = ["Guillermo Iguaran"]
  s.email       = ["guilleiguaran@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Uglifier adapter for the Rails asset pipeline.}
  s.description = %q{Uglifier adapter for the Rails asset pipeline.}

  s.rubyforge_project = "uglifier-rails"

  s.add_runtime_dependency 'uglifier',    '>= 1.2.0'
  s.add_runtime_dependency 'railties',    '>= 3.2.0.beta'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
