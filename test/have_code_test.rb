require 'test_helper'

class HaveCodeTest < Test::Unit::TestCase
  in_activerecord do
    should "have a 'have_code' method" do
      assert Mug.respond_to?(:have_code)
    end
    context "when configured with a code" do
      setup do
        Mug.have_code(60466169, 12034710206, 81268112)
      end
      should "have a 'find_by_code' method" do
        assert Mug.respond_to?(:find_by_code)
      end
    end
  end
  in_datamapper do
    should "have a 'have_code' method" do
      assert Goblet.respond_to?(:have_code)
    end
  end
end
