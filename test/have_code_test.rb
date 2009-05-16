require 'test_helper'

class HaveCodeTest < Test::Unit::TestCase
  in_activerecord do
    should "have a 'have_code' method" do
      assert Mug.respond_to?(:have_code)
    end
  end
  in_datamapper do
    should "have a 'have_code' method" do
      assert Goblet.respond_to?(:have_code)
    end
  end
end
