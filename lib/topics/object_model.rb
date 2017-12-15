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
    prepend LinuxFriendly
  end
end

# laptop = ObjectModel::Laptop
linux_friendly_role = ObjectModel::LinuxFriendly
# parent = ObjectModel::Parent
# parent_instance = parent.new

# p laptop.superclass
# p parent_instance.fork_process

generic_object = Struct.new 'Desktop'
generic_object.extend linux_friendly_role

def generic_object.fork_process
  # super
  raise NoMethodError
end

p generic_object.ancestors
