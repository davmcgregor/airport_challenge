require 'plane'

describe Plane do
  let (:airport) {Airport.new}

  it { is_expected.to respond_to(:land) }

  describe '#land' do
    it 'lands at an airport' do
      expect(subject.land).to eq :landed  
    end

    it 'cannot land if already grounded' do
      subject.land
      expect {subject.land }.to raise_error "Plane already landed"
    end
  end

  describe '#take_off' do
    it 'takes off from an airport' do
      expect(subject.take_off).to eq :flying
    end

    it 'is no longer in the airport' do
      subject.take_off
      expect(subject).not_to be_in_airport
    end

    it 'cannot take off if already flying' do
      subject.take_off
      expect { subject.take_off }.to raise_error "Plane already flying"
    end 
  end
end