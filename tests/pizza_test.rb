require 'minitest/autorun'
require_relative '../pizza_app.rb'

class PizzaTest < Minitest::Test
  def setup
    @pizza = Pizza.new
  end

  def test_add_topping
    @pizza.add_topping('mushrooms')
    assert_includes(@pizza.toppings, 'mushrooms')
  end

  def test_pineapple
    assert_output(/Please leave\./){assert_raises(SystemExit) {@pizza.add_topping('pineapple')}}
  end
end
