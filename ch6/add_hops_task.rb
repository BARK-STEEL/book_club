class AddHopsTask < CompositeTask
  def initialize
    super('Add hops to the boiling water.')
 	self << AddBitteringHopsTask.new
	self << AddFlavoringHopsTask.new 
	self << AddFinishingHopsTask.new
  end
end
