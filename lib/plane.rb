require_relative 'airport'

class Plane
  attr_reader :location

  def initialize
    @location = :landed
  end

  def land(airport)
    :landed
    @location = :landed
  end

  def take_off
    @location = :flying
  end

  def in_airport?
    return false if @location == :flying
    return true if @location == :landed
  end

end