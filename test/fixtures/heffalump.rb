class Heffalump
  
  def self.model_name
    returning(super) do |model_name|
      model_name.partial_path = "woozles/woozle"
    end
  end
  
end