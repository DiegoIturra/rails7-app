require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test 'render a list of products' do
    get products_path()
    assert_response :success
    assert_select '.product', 2
  end

  test 'render a detailed product page' do
    get product_path(products(:ps4)) #ps4 esta definido en la fixture
    assert_response :success
    assert_select '.title', 'PS4 fat'
    assert_select '.description', 'PS4 en buen estado'
    assert_select '.price', '$300000'
  end

end
