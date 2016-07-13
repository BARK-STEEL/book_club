class AddMaltTask < Task
  def initialize
    super('Add malt extract to the boiling water!')
  end

  def time_required
    1
  end
end
