require 'science'
require 'science/external_service/usgs/elevation'

module Science
  module PhysicalGeography
    module Earth
      
      # Access elevation data from various sources
      module Elevation
        
        def usgs(options={})
          Science::ExternalService::USGS::Elevation.new.get_elevation(options)
        end
        
        extend self
        
      end
      
    end
    
  end
end
