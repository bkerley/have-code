require 'active_record'
ActiveRecord::Base.establish_connection(:adapter => "sqlite", :database => ":memory:")
class Mug < ActiveRecord::Base
end
