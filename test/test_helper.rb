require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'have_code'

class Test::Unit::TestCase
  def self.in_activerecord(&block)
    require 'active_record_helper'
    context "Mug, an ActiveRecord class,", &block
  end
  def self.in_datamapper
    require 'data_mapper_helper'
  end
end

