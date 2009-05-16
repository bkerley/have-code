module HaveCode
  module ARCode
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def have_code(mod, a, b)
        write_inheritable_attribute :have_code_cipher, Affine::Cipher.new(mod, a, b)

        extend OptionalClassMethods
        include InstanceMethods
      end
    end

    module OptionalClassMethods
      def find_by_code(id)

      end
    end

    module InstanceMethods
      def have_code_cipher
        self.class.read_inheritable_attribute :have_code_cipher
      end

      def code
        have_code_cipher.encipher(id).to_s(36)
      end
    end
  end
end
