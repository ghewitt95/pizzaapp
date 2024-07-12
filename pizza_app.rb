class Pizza
  attr_accessor :toppings

  def initialize
    @toppings = []
  end

  def add_topping(topping)
    @toppings << topping
    check_pineapple(topping)
  end

  def check_pineapple(topping)
    if topping.downcase == "pineapple"
      pp "please leave.".capitalize
      exit
    end
  end
end

def run_cli
  pizza = Pizza.new

  loop do
    pp "What topping would you like on your pizza?"
    input = gets.chomp

    break if input.downcase == "exit"

    pizza.add_topping(input)
    pp "Current toppings: #{pizza.toppings.join(', ')}"
  end

  pp "Final Order!: #{pizza.toppings.join(', ')}"
end
