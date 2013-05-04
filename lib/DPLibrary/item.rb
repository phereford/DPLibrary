module DPLibrary
  class Item < Base
    PROPERTIES = [
      :count
    ]

    PROPERTIES.each do |property|
      attr_accessor property
    end

    def initialize(parameters)
      json_response = find(parameters)

      response_values = super(json_response)

      binding.pry
      set_method(response_values)
    end

    private
    def find(parameters)
      get('items', parameters)
    end

    def set_method(values)
      self.count = values['count']
    end
  end
end
