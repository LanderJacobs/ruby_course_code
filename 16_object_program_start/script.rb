# start for classes

class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end
  
  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)
  
  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance. (instance variable)
  
  puts "Manufacturer: #{$manufacturer}"
  # $manufacturer is global! We can get it directly. (global variable)
  
  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class. (class variables)

# another global variable example

class MyClass
    $my_variable = "Hello!"
end
  
puts $my_variable

# class variable example

class Person
    @@people_count = 0

def initialize(name)
    @name = name
    @@people_count += 1
end

def self.number_of_instances
    @@people_count
end
end
  
matz = Person.new("Yukihiro")
dhh = Person.new("David")
  
puts "Number of Person instances: #{Person.number_of_instances}"

# inheritance

class ApplicationError
    def display_error
      puts "Error! Error!"
    end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

# overiding

class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
end
  
class Dragon < Creature
    def fight
      return "Breathes fire!"
    end
end

# take something from superclass

class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
end
  
class Dragon < Creature
    def fight
      puts "Instead of breathing fire..."
      super()
    end
end

# multiple inheritance doesn't work in ruby, no inheritance from different classes
# also ; allows to have multiple lines on one line

class Creature
    def initialize(name)
      @name = name
    end
end

class Person
    def initialize(name)
      @name = name
    end
end
  
class Dragon < Creature; end
class Dragon < Person; end

# final example

class Message
    @@messages_sent = 0
    def initialize(from, to)
      @from = from
      @to = to
      @@messages_sent += 1
    end
end
  
class Email < Message
    def initialize(from, to)
      super(from, to)
    end
end
  
my_message = Message.new("me", "you")

# end