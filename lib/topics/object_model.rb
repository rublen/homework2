# frozen_string_literal: true

# exercise object model
module ObjectModel
  # module
  module LinuxFriendly
    def fork_process
      'Parent: allocate memory'
    end
  end
  # class
  class Parent
    extend LinuxFriendly

    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end

  # class
  class Laptop < Parent
  end
end

laptop = ObjectModel::Laptop
lap = laptop.new
linux_friendly_role = ObjectModel::LinuxFriendly
laptop.prepend(linux_friendly_role)
parent = ObjectModel::Parent
parent_instance = parent.new

p laptop.superclass
p laptop.ancestors
p laptop.respond_to?(:fork_process)
p parent.respond_to?(:fork_process)
p laptop.fork_process
p parent.fork_process
p lap.fork_process
p parent_instance.fork_process
p parent.instance_methods
