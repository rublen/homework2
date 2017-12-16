# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # Class
  class Car
    attr_reader :year, :color, :model, :current_speed
    def initialize(args)
      if args != {}
        args.each { |k, v| instance_variable_set("@#{k}", v) }
      else
        @color = 0
        @year = 0
        @model = 0
      end
      @current_speed = 0
    end

    def self.default_car
      new({})
    end

    def speed_up(value)
      @current_speed += value
    end

    def push_break(value)
      @current_speed -= value if value <= @current_speed
    end
  end
end

# car_class = StateAndBehaviour::Car
# default_car = car_class.new({})
