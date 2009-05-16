module HaveCode
  module DMCode
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
      def find_by_code(code)
        return nil unless code.is_a? String
        cipher = read_inheritable_attribute(:have_code_cipher)
        candidate_id = cipher.decipher code.to_i(36)
        object = self.get candidate_id
        return object if object.code == code
        return nil
      rescue
        nil
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
