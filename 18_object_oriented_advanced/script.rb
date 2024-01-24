#  private and public methods explicitly declared, public doesn't need it but makes it easier to understand for others

class Dog
    def initialize(name, breed)
      @name = name
      @breed = breed
    end
    
    public
    def bark;puts "Woof!";end
  
    private
    def id;@id_number = 12345;end
end

# attr_writer and attr_reader are just setter and getter, no need for special methods

class Person
    attr_reader :name
    attr_writer :job
    def initialize(name, job)
      @name = name
      @job = job
    end
    
=begin
    def name
      @name
    end
    
    def job=(new_job)
      @job = new_job
    end
=end
end

# getter and setter in one = attr_accessor

class Person
    attr_reader :name
    attr_accessor :job
    
    def initialize(name, job)
      @name = name
      @job = job
    end
end

# modules can't have instances, they are kind of like classes except for that part
# modules' constants are always written in ALL_CAPS

module Circle

    PI = 3.141592653589793
    
    def Circle.area(radius)
      PI * radius**2
    end
    
    def Circle.circumference(radius)
      2 * PI * radius
    end
end

# to get something from a specific module(/library) us ::

puts Math::PI

# some modules need to be imported/required

require 'date'

puts Date.today

# If we want to use a specific module in a class, we can include it in the class so we don't have to work with the ::-way of writing

class Angle
    include Math
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
end
  
acute = Angle.new(1)
acute.cosine

# a mixin is when we mix a module into a class, see the below example

module Action
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
end
  
class Rabbit
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end
  
class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
end
  
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
  
peter.jump
jiminy.jump

# since we can include multiple modules, we can "technically" use multiple inheritance in some way

module MartialArts
    def swordsman
      puts "I'm a swordsman."
    end
end
  
class Ninja
    include MartialArts
    def initialize(clan)
      @clan = clan
    end
end
  
class Samurai
    include MartialArts
    def initialize(shogun)
      @shogun = shogun
    end
end

# extends works different from include since it adds things to a class on the class-stage and not the instance one

module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
end
  
class TheHereAnd
    extend ThePresent
end
  
TheHereAnd.now