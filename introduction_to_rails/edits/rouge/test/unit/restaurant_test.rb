require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_truth
    assert true
  end

# START:create
  def test_can_create_restaurant_with_only_name
    Restaurant.create! :name => "Mediterraneo"
  end
# END:create

# START:instantiate
  def test_can_instantiate_and_save_a_restaurant
    restaurant = Restaurant.new
    restaurant.name = "Mediterraneo"
    restaurant.description = <<DESC
One of the best Italian restaurants in the Kings Cross area,
Mediterraneo will never leave you disappointed
DESC
    restaurant.address = "1244 Kings Cross Road, London WC1X 8CC"
    restaurant.phone = "+44 1432 3434"

    restaurant.save!
  end
# END:instantiate

# START: required
  def test_that_name_is_required
    restaurant = Restaurant.new
    assert !restaurant.valid?
  end
# END: required
end
