class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
  
    private
    def pin
      @pin = 1234
    end
    private
    def pin_error
      "Access denied: incorrect PIN."
    end
    public
    def display_balance(pin_number)
      if pin_number == pin
        puts "Balance: $#{@balance}" 
      else
        puts pin_error
      end
    end
    public
    def withdraw(pin_number, amount)
      if amount > @balance
        puts "You don't have enough money to withdraw"
      elsif pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts "pin error"
      end
    end
    public
    def deposit(pin_number, amount)
      if pin_number == pin
        @balance += amount
        puts "Deposited #{amount}. New balance: $#{@balance}."
      else
        puts "pin error"
      end
    end
  end
  
  checking_account = Account.new("Me", 10_000_000)