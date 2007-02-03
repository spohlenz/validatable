module Validatable 
  class ValidatesPresenceOf < ValidationBase #:nodoc:
    def valid?(instance)
      (!instance.send(self.attribute).nil? && instance.send(self.attribute).strip.length != 0)
    end
  end
end