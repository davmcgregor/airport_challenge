require 'airport'

describe Airport do
    let (:plane) {Plane.new}

    describe '#land' do
        it 'lets a plane land' do
            expect(subject.land(plane)).to eq :landed
        end

        it 'raises an error if the airport is at capacity' do
            100.times { subject.land(Plane.new) }
            expect { subject.land(plane) }.to raise_error "Airport full: cannot land plane"
        end
    end

    it 'has a default capacity' do
        expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
    end

    describe '#take_off' do
      it 'lets a plane take off' do
        expect(subject.take_off(plane)). to eq :flying
      end

      it 'is no longer in the airport' do
        subject.land(plane)
        subject.take_off(plane)
        expect(subject.planes).not_to include plane
      end
    end

    describe 'initialization' do
        it 'has a variable capacity' do
            airport = Airport.new(120)
                120.times { airport.land Plane.new}
                expect { airport.land Plane.new }.to raise_error "Airport full: cannot land plane"
        end
    end

    describe 'initialization' do
        subject { Airport.new}
        let(:plane) { Plane.new}
        it 'default capacity' do
            described_class::DEFAULT_CAPACITY.times do
                subject.land(plane)
            end
           expect { subject.land(plane) }.to raise_error "Airport full: cannot land plane"
        end
    end
end