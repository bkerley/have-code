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
      should 'create an object, get its code, and recall it by code' do
        initech = Mug.create :name=>'initech', :material=>'porcelain'
        code = initech.code
        assert code.is_a?(String)
        lumbergh = Mug.find_by_code code
        assert_equal initech, lumbergh
      end
    end
  end
  in_datamapper do
    should "have a 'have_code' method" do
      assert Goblet.respond_to?(:have_code)
    end
    context 'when configured with a code' do
      setup do
        Goblet.have_code(60466169, 12034710206, 81268112)
      end
      should "have a 'find_by_code' method" do
        assert Goblet.respond_to?(:find_by_code)
      end
      should 'create an object, get its code, and recall it by code' do
        kohg = Goblet.create :name=>'king of hyrule', :material=>'gold'
        code = kohg.code
        assert code.is_a?(String)
        zelda = Goblet.find_by_code code
        assert_equal kohg, zelda
      end
    end
  end
end
