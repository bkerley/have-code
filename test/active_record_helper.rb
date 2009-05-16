require 'active_record'
HaveCode.enable_activerecord
ActiveRecord::Base.establish_connection(:adapter => "sqlite", :database => ":memory:")
class Mug < ActiveRecord::Base
end
