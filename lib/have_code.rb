require File.join(File.dirname(__FILE__), 'have_code', 'ar_code')
module HaveCode
  def self.enable_activerecord
    return if ActiveRecord::Base.respond_to? :have_code
    ActiveRecord::Base.send :include, ARCode
  end
end

if defined? ActiveRecord::Base
  HaveCode.enable_activerecord
end
