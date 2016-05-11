class Node
  attr_accessor :name, :parent
  attr_reader :children, :name

  def initialize(name, time_required=nil)
    @name = name
    @time_required = time_required
    @children = []
  end

  def add_child(node)
    @children << node
    node.parent = self
  end

  alias << add_child

  def remove_child(node)
    @children.delete(node)
  end

  def [](index)
    @children[index]
  end

  def []=(index, node)
    replaced_child = @children[index]
    @children[index] = node
    replaced_child.parent = nil
    node.parent = self
  end

  def leaf?
    children.empty?
  end

  def time_required
    if leaf?
      @time_required
    else
      time = 0
      children.each { |child_task| time += child_task.time_required }
      time
    end
  end

  def recipe
    puts "Let's make some beer! Here are the steps:\n\n"
    @step = 1

    def iterate_steps(node)
      node.children.each do |child|
        if child.leaf?
          puts "Step #{@step}: #{child.name} for #{child.time_required} minutes."
          @step += 1
        else
          if self.children.include?(child)
            puts "\nNow it's time to #{child.name}. Estimated time: #{child.time_required} minutes.\n\n"
          end
          iterate_steps(child)
        end
      end
    end

    iterate_steps(self)

    puts "\nCongratulations!! Now it's time to drink some delicious brews!\n\n"

    puts "Total time required: #{self.time_required} minutes!"
  end

end
