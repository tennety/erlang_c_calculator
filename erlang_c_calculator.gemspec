# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "erlang_c/version"

Gem::Specification.new do |s|
  s.name        = "erlang_c_calculator"
  s.version     = ErlangC::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chandu Tennety"]
  s.email       = ["chandu.tennety@janova.us"]
  s.homepage    = "http://rubygems.org/gems/erlang_c_calculator"
  s.summary     = %q{Calculate the various terms associated with the Erlang C formula.}
  s.description = %q{Given the average call arrival rate per second, the average
	             service time and acceptable wait time, calculate the load,
	             Erlang C probability that a caller waits, and the number of
	             agents needed to service the call station.}

  s.rubyforge_project = "erlang_c_calculator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
