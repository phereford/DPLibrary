module DPLibrary
  class Provider
    attr_accessor :id,
                  :name

    def initialize(hash)
      set_values(hash)
    end

    private
    def set_values(hash)
      self.id   = hash['@id']
      self.name = hash['name']
    end
  end
end
