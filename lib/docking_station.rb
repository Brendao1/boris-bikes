require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=20)
    @bikes = []
    @capacity = capacity
  end

def full?
 if @bikes.size == capacity
   true
 else
   false
 end
end

def vacant?
  if @bikes.size == 0
    true
  else
    false
  end
end

# private :full?, :vacant? have to be down here and not at the top
  private :full?, :vacant?

  def release_bike
    if vacant?
      raise ArgumentError, "No bikes available"
    else
      @bikes.pop()
    end
  end

  def dock(bike)
    if full?
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
