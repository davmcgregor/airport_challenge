require 'airport'

describe Airport do
    let (:plane) {Plane.new}

    describe '#land' do
        it 'lands a plane in the airport' do
            expect(subject.land(plane)).to eq :landed
        end

        it 'raises an error if the airport is at capacity' do
            100.times { subject.land(Plane.new) }
            expect { subject.land(plane) }.to raise_error "Airport full: cannot land plane"
        end
    end
end