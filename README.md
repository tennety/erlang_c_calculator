## What does it do?
Given the average call arrival rate per second, the average service time and acceptable wait time, calculate the load, Erlang C probability that a caller waits, and the number of agents needed to service the call station.

## Installation
      gem install erlang_c_calculator

## Usage
      require 'rubygems'
      require 'erlang_c_calculator'

      e = ErlangC::Calculator.new(0.01, 300, 20)
      e.traffic_intensity  # => 3.0
      e.agents_needed      # => 6

## Dependencies
ErlangC Calculator does not have any dependencies.

## References
This gem uses material from the online book ["Call Center Mathematics"](http://www.math.vu.nl/~koole/ccmath/book.pdf) by Professor [Ger Koole](http://www.math.vu.nl/~koole/) of the [VU University of Amsterdam](http://www.vu.nl/en/)'s [Department of Mathematics](http://www.math.vu.nl/). More tools and research are available at the [CCMath website](http://www.ccmath.com).
