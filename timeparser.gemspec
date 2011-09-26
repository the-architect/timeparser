# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "timeparser/version"

Gem::Specification.new do |s|
  s.name        = "timeparser"
  s.version     = Timeparser::VERSION
  s.authors     = ["Marcel Scherf"]
  s.email       = ["marcel.scherf@epicteams.com"]
  s.homepage    = "http://github.com/the-architect/timeparser"
  s.summary     = %q{Parses time information from strings.}
  s.description = %q{Parses time information from strings.}

  s.rubyforge_project = "timeparser"

  s.add_runtime_dependency "treetop"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
