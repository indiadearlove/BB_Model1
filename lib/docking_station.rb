class DockingStation

  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock(the_bike)
    @bikes << the_bike
  end

  def release(the_bike)
    @bikes.delete(the_bike)
  end

end