module ErlangC
  module Math
    def nth_term(u, m)
      (u**m)/factorial(m)
    end
  
    def factorial(k)
      case k
      when 0 then 1
      when 1 then 1
      else k * factorial(k - 1)
      end
    end
  end
end
