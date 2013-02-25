require 'bundler/setup'
require 'science/physical_geography/earth/elevation'

include Science::PhysicalGeography::Earth

locations = {
  house: { latitude: 42.72664, longitude: -73.68996 },
  park: { latitude: 42.72423, longitude: -73.68501 }
}

locations[:house][:elevation] = Elevation.usgs( locations[:house].merge(log: false) )
locations[:park][:elevation] =  Elevation.usgs( locations[:park].merge(log: false) )

require 'pp'

pp locations