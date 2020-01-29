require_relative 'airport'

class Plane
  attr_reader :location

  def initialize
    @location = nil
  end

  def land
    fail "Plane already landed" if @location == :landed
    @location = :landed
  end

  def take_off
    fail "Plane already flying" if @location == :flying
    @location = :flying
  end

  def in_airport?
    return false if @location == :flying
    return true if @location == :landed
  end
end