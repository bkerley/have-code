require 'datamapper'
HaveCode.enable_datamapper
DataMapper.setup(:default, 'sqlite3::memory:')
class Goblet
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :material, String
end
DataMapper.auto_upgrade!
