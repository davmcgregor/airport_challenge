require 'plane'

describe Plane do
  it { is_expected.to respond_to(:land) }

  let (:airport) {Airport.new}
  describe '#land' do
    it 'lands at an airport' do
      expect(subject.land(airport)).to eq :landed  
    end
  end

  describe '#take_off' do
    it 'takes off from an airport' do
      expect(subject.take_off).to eq :flying
    end

    it 'is no londer in the airport' do
        subject.take_off
        expect(subject).not_to be_in_airport
    end
  end
end