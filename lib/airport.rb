class Airport
    DEFAULT_CAPACITY = 100

    attr_accessor :planes, :capacity
    
    def initialize(capacity=DEFAULT_CAPACITY)
        @planes = []
        @capacity = capacity
    end

    def land(plane)
        fail "Airport full: cannot land plane" if airport_full?
        @planes << plane

        plane.land
    end

    def take_off(plane)
        @planes.delete plane
        plane.take_off
    end

    private

    def airport_full?
        planes.length >= capacity
    end

end