# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "plus/version"

Gem::Specification.new do |s|
  s.name        = "plus"
  s.version     = Plus::VERSION
  s.authors     = ["Rob Cameron"]
  s.email       = ["cannikinn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Google+ API gem}
  s.description = %q{This gem provides programmatic access to the Google+ API without making HTTP calls manually.}

  s.rubyforge_project = "plus"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "httparty"
end
