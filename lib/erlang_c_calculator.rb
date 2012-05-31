module ErlangC
  class Calculator

    attr_accessor :arrival_rate, :serv_time, :wait_time

    def initialize(arrival_rate, serv_time, wait_time = 30)
      @arrival_rate, @serv_time, @wait_time = arrival_rate, serv_time, wait_time
    end

    def traffic_intensity
      (arrival_rate * serv_time).to_f
    end

    def erlang_c_probability(m)
      u = traffic_intensity

      return 1 if u > m

      product = (0..m).inject(1){|prod, j| (prod * j/u) + 1}
      1.0/((product * (m - u)/u) + 1)
    end

    def average_wait(num_agents)
      (erlang_c_probability(num_agents) * serv_time) / (num_agents - traffic_intensity)
    end

    def agents_needed
      agents = (traffic_intensity + 1).to_i
      while average_wait(agents) >= wait_time
        agents += 1
      end
      agents
    end

  end
end
