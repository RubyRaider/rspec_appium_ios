require_relative '../abstract/page'

class Pdp < Page

  # Actions

  def add_to_cart_text
    driver.wait { add_to_cart_button }.text
  end

  private

  # Elements

  def add_to_cart_button
    driver.find_element(accessibility_id: 'Add To Cart button')

  end
end
