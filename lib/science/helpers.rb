module Science
  
  # General helpers for the internals of this gem.
  # In time, most of these should be abstracted to gems.
  module Helpers
    
    # TODO: Abstract to `convertable` and `error` gems.
    def validate_and_convert_hash(object)
      raise TypeError, "should be a Hash or respond to :to_hash or :to_h" unless object.is_a?(Hash) || object.respond_to?(:to_hash) || object.respond_to?(:to_h)
      object = object.to_hash rescue object.to_h unless object.is_a?(Hash)
      
      object
    end
    
    # TODO: Abstract to `convertable` and `error` gems.
    def validate_and_convert_float(object)
      raise TypeError, "should be a Float or respond to :to_f" unless object.is_a?(Float) || object.respond_to?(:to_f)
      object = object.to_f unless object.is_a?(Float)
      
      object
    end
    
    # TODO: Abstract to `convertable` gem
    def validate_hash_keys(hash, *keys)
      keys.each do |key|
        raise "requires key #{key.inspect}" unless hash.has_key?(key)
      end
    end
    
    extend self
    
  end
  
end