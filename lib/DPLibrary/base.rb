module DPLibrary
  class Base
    include DPLibrary::Request

    def initialize(response)
      JSON.parse(response)
    end
  end
end
