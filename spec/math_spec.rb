require 'spec'
require 'lib/erlang_c_calculator'
require 'lib/math'

module ErlangC
  describe Math do
    before do
      class TestClass
	include Math
      end

      @test = TestClass.new
    end

    describe "#factorial" do
      it "for 5 should be 120" do
	@test.factorial(5).should == 120	
      end

      it "for 1 should be 1" do
	@test.factorial(1).should == 1
      end

      it "for 0 should be 1" do
	@test.factorial(0).should == 1
      end

      it "for 2 should be 2" do
	@test.factorial(2).should == 2
      end
    end

  end
end
