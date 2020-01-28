require_relative 'airport'

class Plane
  attr_reader :location

  def initialize
    @location = :grounded
  end

  def land(airport)
    :landed
    @location = :grounded
  end

  def in_airport?
    return false if @location == :airborne
    true
  end
end