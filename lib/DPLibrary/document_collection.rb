module DPLibrary
  class DocumentCollection < Base
    attr_accessor :count,
                  :offset,
                  :limit,
                  :documents

    def initialize(parameters)
      json_response = find(parameters)

      response_values = super(json_response)

      set_method(response_values)
    end

    private

    def find(parameters)
      p = path!(parameters)
      get(p, parameters)
    end

    ##
    # Return the appropriate URI path, which depends upon whether IDs are given
    #
    # Remove an `id' parameter from the parameters if it exists, because it
    # will become part of the path, and should not be included in the
    # querystring parameters.
    #
    # @param [Hash] parameters  Query parameters
    # @return [String]
    # @api private
    #
    def path!(parameters)
      if parameters.include? :id
        id = parameters.delete(:id)
        "items/#{Array(id).join(',')}"
      else
        'items'
      end
    end

    def set_method(values)
      self.count = values['count']
      self.offset = values['start']
      self.limit = values['limit']

      self.documents = create_documents(values['docs'])
    end

    def create_documents(document_array)
      documents = []

      document_array.each do |document|
        documents << Document.new(document)
      end

      documents
    end
  end
end
