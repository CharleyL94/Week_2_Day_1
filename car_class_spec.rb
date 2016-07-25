require('minitest/autorun')
require('minitest/rg')
require_relative('./car_class.rb')

class CarTest < MiniTest::Test

def setup()
  @car = Car.new(100, 0)
end

def test_car_speed_and_fuel_level
  assert_equal(100, @car.fuel_level())
  assert_equal(0, @car.speed())
end

def test_car_accelerate
  @car.accelerate()
  assert_equal(95, @car.fuel_level())
  assert_equal(10, @car.speed())
end

def test_car_brake
  @car.accelerate()
  @car.accelerate
  @car.brake()
  assert_equal(10, @car.speed())
end


end