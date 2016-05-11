class BottleTask < CompositeTask
  def initialize
    super('Bottle your beer!')
    self << TransferToBottlingBucketTask.new
	self << AddPrimingSugarTask.new
    self << FillBottlesTask.new
    self << CapBottlesTask.new
  end
end
