require 'science/external_service/base'

module Science
  module ExternalService
    module USGS
      
      # The United States Geological Survey (USGS) Elevation Service API.
      class Elevation < Base
        
        protocol :soap
        options wsdl: 'http://gisdata.usgs.gov/xmlwebservices2/elevation_service.asmx?WSDL'
        
        def get_elevation(options={})
          options = validate_and_convert_hash(options)
          validate_hash_keys(options, :latitude, :longitude)
          
          # NOTE: USGS seems to have X and Y backwards. X should be latitude and Y should be longitude. Or... am I crazy?
          message = {
            'Y_Value' => validate_and_convert_float( options.delete(:latitude) ),
            'X_Value' => validate_and_convert_float( options.delete(:longitude) )
          }
          
          response = call(:get_elevation, message: message)
          response_message = response.body[:get_elevation_response][:get_elevation_result][:usgs_elevation_web_service_query][:elevation_query]
          
          # TODO: Use a unit library to say this is measured in feet.
          # TODO: Use Response object
          response_message[:elevation].to_f
        end
        
      end
      
    end
  end
end
