require 'airport'

describe Airport do
  let (:plane) {Plane.new}

  describe '#initialize' do
    it 'has a default capacity of 100' do
      expect(subject.capacity).to eq 100
    end

    it 'has a different capacity' do
      airport = Airport.new(120)
      120.times { airport.land Plane.new}
      expect { airport.land Plane.new }.to raise_error "Airport full: cannot land plane"
    end
  end

  describe '#land' do
    it 'lets a plane land' do
      expect(subject.land(plane)).to eq :landed
    end

    it 'raises an error if the airport is at capacity' do
      100.times { subject.land(Plane.new) }
      expect { subject.land(plane) }.to raise_error "Airport full: cannot land plane"
    end
    
    it 'plane must be in airport when landed' do
      subject.land(plane)
      expect(subject.planes).to include plane
    end
  end

  describe '#take_off' do
    it 'lets a plane take off' do
      subject.land(plane)
      expect(subject.take_off(plane)). to eq :flying
    end

    it 'removes a plane from the airport' do
      subject.land(plane)
      subject.take_off(plane)
      expect(subject.planes).not_to include plane
    end

    it 'cannot take off it is not in the airport' do
      expect { subject.take_off(plane) }.to raise_error "Plane is not in airport"
    end
  end
end