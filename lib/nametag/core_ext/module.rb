module Nametag
  module CoreExtensions
    
    module Module
      # Returns an Nametag::ModelName object for module. It can be
      # used to retrieve all kinds of naming-related information.
      def model_name
        @model_name ||= ::Nametag::ModelName.new(name)
      end
    end
    
  end
end