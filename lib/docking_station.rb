require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize()
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise ArgumentError, "No bikes available"
    else
      @bikes.pop()
    end
  end



  def dock(bike)
    if @bikes.size == 1
      raise ArgumentError, "Dock is full"
    else
      @bikes << bike
    end
  end

end

# feature test for docking a bike. We run this in irb.
#
# ds = DockingStation.new
# redbike = Bike.new
# ds.dock(redbike)
#
# we want the dock method to return a bike. We imagine
# the docking station only has 1 space.
