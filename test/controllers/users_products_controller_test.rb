require 'test_helper'

class UsersProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_product = users_products(:one)
  end

  test "should get index" do
    get users_products_url
    assert_response :success
  end

  test "should get new" do
    get new_users_product_url
    assert_response :success
  end

  test "should create users_product" do
    assert_difference('UsersProduct.count') do
      post users_products_url, params: { users_product: { product_id: @users_product.product_id, user_id: @users_product.user_id } }
    end

    assert_redirected_to users_product_url(UsersProduct.last)
  end

  test "should show users_product" do
    get users_product_url(@users_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_product_url(@users_product)
    assert_response :success
  end

  test "should update users_product" do
    patch users_product_url(@users_product), params: { users_product: { product_id: @users_product.product_id, user_id: @users_product.user_id } }
    assert_redirected_to users_product_url(@users_product)
  end

  test "should destroy users_product" do
    assert_difference('UsersProduct.count', -1) do
      delete users_product_url(@users_product)
    end

    assert_redirected_to users_products_url
  end
end
