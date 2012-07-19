module Crypt
  module StringXor
		def ^ other
			a = self.unpack('C*')
			b = (self.size > other.size ? other.rjust(self.size) : other).unpack('C*')
			a.zip(b).map{ |a, b| a ^ b }.pack('C*')
		end
	end
end

class String
	include Crypt::StringXor
end