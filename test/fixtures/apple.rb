class Apple
  
  def self.model_name
    @model_name ||= returning(super) do |mn|
      mn.plural     = "apples".freeze
      mn.singular   = "apple".freeze
      mn.collection = "apples".freeze
    end
  end
  
end