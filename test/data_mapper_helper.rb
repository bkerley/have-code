require 'datamapper'
DataMapper.setup(:default, 'sqlite3::memory:')
class Goblet
  include DataMapper::Resource
end
