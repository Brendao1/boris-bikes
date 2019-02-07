require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end


  def dock
  end

end

# feature test for docking a bike
# ds = DockingStation.new
# redbike = Bike.new
# ds.dock(redbike)
