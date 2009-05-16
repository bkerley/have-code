require 'datamapper'
HaveCode.enable_datamapper
DataMapper.setup(:default, 'sqlite3::memory:')
class Goblet
  include DataMapper::Resource
end
