require 'science/external_services/usgs/elevation'

module Science
  module ExternalService
    
    # External services which utilize United States Geological Survey (USGS) APIs.
    module USGS
      
      # Return a new (or cached) instance of the USGS Elevation Service API service.
      def elevation
        @elevation ||= Elevation.new
      end
      
    end
    
  end
end
