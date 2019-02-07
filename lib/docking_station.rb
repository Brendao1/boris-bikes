require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    @bike
  end


  def dock(bike)
    @bike = bike
    # we want the dock method to return a bike so that
    # it passes the unit test.
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
