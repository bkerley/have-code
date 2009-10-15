module HaveCode
  module CommonCode
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
