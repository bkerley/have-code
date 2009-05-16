require File.join(File.dirname(__FILE__), 'have_code', 'ar_code')
require File.join(File.dirname(__FILE__), 'have_code', 'dm_code')
module HaveCode
  def self.enable_activerecord
    return if ActiveRecord::Base.respond_to? :have_code
    ActiveRecord::Base.send :include, ARCode
  end
  def self.enable_datamapper
    return if DataMapper::Resource.respond_to? :have_code
    DataMapper::Resource.send :include, DMCode
  end
end

if defined? ActiveRecord::Base
  HaveCode.enable_activerecord
end

if defined? DataMapper::Resource
  HaveCode.enable_datamapper
end
