require 'airport'

describe Airport do
    let (:plane) {Plane.new}

    describe '#land' do
        it 'lands a plane in the airport' do
            expect(subject.land(plane)).to eq :landed
        end
    end
end