require 'delegate'
require 'science/helpers'

module Science
  module ExternalService
    
    # The base class for classes which contact an external service for data.
    class Base < SimpleDelegator
      extend Science::Helpers
      include Science::Helpers
      
      class << self
        
        def protocol(protocol=nil)
          @protocol = protocol.to_sym unless protocol.nil?
          
          @protocol
        end
        
        def options(options=nil)
          @options = validate_and_convert_hash(options) unless options.nil?
          
          @options
        end
        
      end
      
      def initialize(options={})
        options = self.class.options.merge(options)
        
        client = case self.class.protocol
        when :http
          require 'httpi'
          
          HTTPI::Request.new(options)
        when :soap
          require 'savon'
          
          Savon.client(options)
        else
          # TODO: Raise some type of error
        end
        
        __setobj__(client) # Setup the delegator
      end
      
    end
    
  end
end
