module Nametag
  class ModelName < String
    attr_accessor :singular, :plural, :element, :collection, :partial_path
    alias_method :cache_key, :collection

    def initialize(name)
      super
      @singular = ActiveSupport::Inflector.underscore(self).tr('/', '_').freeze
      @plural = ActiveSupport::Inflector.pluralize(@singular).freeze
      @element = ActiveSupport::Inflector.underscore(ActiveSupport::Inflector.demodulize(self)).freeze
      @collection = ActiveSupport::Inflector.tableize(self).freeze
      #@partial_path = "#{@collection}/#{@element}".freeze
    end
    
    def partial_path
      @partial_path ||= partial_path!
    end
    
    private
    
      def partial_path!
        "#{@collection}/#{@element}".freeze
      end
    
  end
end