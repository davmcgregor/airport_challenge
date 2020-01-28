class Airport
    DEFAULT_CAPACITY = 100

    attr_accessor :planes, :capacity
    
    def initialize(capacity=DEFAULT_CAPACITY)
        @planes = []
        @capacity = DEFAULT_CAPACITY
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