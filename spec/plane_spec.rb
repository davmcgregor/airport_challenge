require 'plane'

describe Plane do
  it { is_expected.to respond_to(:land) }

  let (:airport) {Airport.new}
  describe '#land' do
    it 'lands at an airport' do
      expect(subject.land(airport)).to eq :grounded  
    end
  end

end