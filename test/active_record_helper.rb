require 'active_record'
HaveCode.enable_activerecord
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
ActiveRecord::Base.connection.create_table :mugs do |t|
  t.column :name, :string
  t.column :material, :string
end
class Mug < ActiveRecord::Base
end
