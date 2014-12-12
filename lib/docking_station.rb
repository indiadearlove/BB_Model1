class DockingStation

  DEF_CAP = 10

  def initialize(options={})
    @capacity = options.fetch(:capacity, DEF_CAP)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock(the_bike)
    raise "Station is full" if full?
    @bikes << the_bike
  end

  def release(the_bike)
    @bikes.delete(the_bike)
  end

  def full?
    bike_count == @capacity
  end

  def available_bikes
    @bikes.reject {|the_bike| the_bike.broken? }
  end

end