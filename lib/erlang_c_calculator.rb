require 'lib/math'

module ErlangC
  class Calculator
    include Math

    attr_accessor :arrival_rate_per_hr, :serv_time, :curr_num_agents, :wait_time
  
    def initialize(arrival_rate_per_hr, serv_time, curr_num_agents, wait_time = 30)
      @arrival_rate_per_hr, @serv_time, @curr_num_agents, @wait_time = arrival_rate_per_hr, serv_time, curr_num_agents, wait_time
    end
  
    def traffic_intensity
      (arrival_rate_per_hr * serv_time).to_f / 3600
    end
  
    def agent_occupancy
      traffic_intensity / curr_num_agents
    end
  
    def erlang_c_probability
      u = traffic_intensity
      m = curr_num_agents
      rho = agent_occupancy

      sum = (0..m).inject(0){|sum, k| sum + nth_term(u, k)} # (0..m) excludes m, so sums to m-1

      numerator = nth_term(u, m)
      denominator = numerator + (1 - rho)*sum

      numerator/denominator
    end

    def agents_needed
      (erlang_c_probability * serv_time) / (wait_time * (1 - agent_occupancy))
    end
  
  end
end
