module AltheaPassport

  class EmptyToken

    def initialize
      self.freeze
    end

    def key
      nil
    end

    def valid?
      false
    end

    def invalid?
      true
    end

  end

end