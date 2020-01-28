class Airport
    attr_accessor :planes, :capacity
    
    def initialize 
        @planes = []
        @capacity = 100
    end

    def land(plane)
        fail "Airport full: cannot land plane" if airport_full?
        @planes << plane

        plane.land
    end

    def airport_full?
        @planes.length >= 100 ? true : false
    end

end