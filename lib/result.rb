module ItunesSearch
  
  class Result
    attr_accessor :attributes
    alias :original_method_missing :method_missing
    def initialize(hash)
      self.attributes = {}
      self.attributes.merge!(hash)
    end
    
    def method_missing(method_name,*args)
      if self.attributes.keys.include?(method_name.to_s)
        return self.attributes["#{method_name.to_s}"]
      else
        original_method_missing method_name, args
      end
    end
  end
  
end