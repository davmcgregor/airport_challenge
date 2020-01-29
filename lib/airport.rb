require_relative 'plane'
require_relative 'weather'

class Airport
    DEFAULT_CAPACITY = 100

    attr_accessor :planes, :capacity
    
    def initialize(capacity=DEFAULT_CAPACITY)
        @planes = []
        @capacity = capacity
    end

    def land(plane)
        fail "Cannot land while stormy" if stormy?
        fail "Airport full: cannot land plane" if airport_full?
        @planes.push plane
        plane.land
    end

    def take_off(plane)
        fail "Cannot take off while stormy" if stormy?
        fail "Plane is not in airport" unless in_airport?(plane)
        @planes.delete plane
        plane.take_off
    end

    def stormy?
        Weather.stormy?
    end

    private
    
    def airport_full?
        planes.length >= capacity
    end

    def in_airport?(plane)
      (@planes.include? (plane)) ? true : false
    end

end