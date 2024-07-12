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
  first_input = true

  loop do
  if first_input
    pp "What topping would you like on your pizza?"
    first_input = false
    else
      pp "Anything else?"
    end

    input = gets.chomp

    break if input.downcase == "no"

    pizza.add_topping(input)
    pp "Current toppings: #{pizza.toppings.join(', ')}"
  end

  pp "Final Order!: #{pizza.toppings.join(', ')}"
end

run_cli if __FILE__ ==$0
