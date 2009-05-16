module HaveCode
  module DMCode
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def have_code
      end
    end
  end
end
