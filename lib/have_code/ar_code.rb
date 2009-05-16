module HaveCode
  module ARCode
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def have_code
      end
    end
  end
end
