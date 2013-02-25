require 'science'
require 'savon'

module Science
  module PhysicalGeography
    module Earth
      
      # Access elevation data from various sources
      module Elevation
        
        USGS_API_URL = 'http://gisdata.usgs.gov/xmlwebservices2/elevation_service.asmx?WSDL'
        
        # Retrieve the elevation at a specific latitude and longitude through the
        # United States Geological Survey (USGS) Elevation Service API.
        def usgs(options={})
          options = Science::Helpers.validate_and_convert_hash('options', options)
          Science::Helpers.validate_hash_keys('options', options, :latitude, :longitude)
          latitude  = Science::Helpers.validate_and_convert_float( 'options[:latitude]', options.delete(:latitude) )
          longitude = Science::Helpers.validate_and_convert_float( 'options[:longitude]', options.delete(:longitude) )
          
          options.merge!(wsdl: USGS_API_URL)
          
          client = Savon.client(options)
          message = { 'Y_Value' => latitude, 'X_Value' => longitude } # Note that USGS seems to have X and Y backwards: X should be latitude and Y should be longitude.
          
          response = client.call(:get_elevation, message: message)
          response_message = response.body[:get_elevation_response][:get_elevation_result][:usgs_elevation_web_service_query][:elevation_query]
          
          response_message[:elevation].to_f # TODO: Use a unit library to say this is measured in feet.
        end
    
        extend self
        
      end
      
    end
    
  end
end
