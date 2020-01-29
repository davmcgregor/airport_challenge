require 'weather'

describe Weather do
  it 'should respond to the method stormy?' do
    expect(Weather).to respond_to(:stormy?)
  end

  it 'should return true or false depending on whether it is stormy or not' do
    expect(Weather.stormy?).to be(true).or be(false)
  end

end