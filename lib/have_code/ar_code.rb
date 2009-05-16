module HaveCode
  module ARCode
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def have_code(mod, a, b)
        @@have_code_affine = Affine::Cipher.new(mod, a, b)

        extend OptionalClassMethods
      end
    end

    module OptionalClassMethods
      def find_by_code
      end
    end

    module InstanceMethods
      def code
        @@have_code_affine.encrypt(id).to_s(36)
      end
    end
  end
end
