require "test_helper"

class KitchenFrunituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitchen_fruniture = kitchen_frunitures(:one)
  end

  test "should get index" do
    get kitchen_frunitures_url
    assert_response :success
  end

  test "should get new" do
    get new_kitchen_fruniture_url
    assert_response :success
  end

  test "should create kitchen_fruniture" do
    assert_difference("KitchenFruniture.count") do
      post kitchen_frunitures_url, params: { kitchen_fruniture: { content: @kitchen_fruniture.content, name: @kitchen_fruniture.name, price: @kitchen_fruniture.price, title: @kitchen_fruniture.title } }
    end

    assert_redirected_to kitchen_fruniture_url(KitchenFruniture.last)
  end

  test "should show kitchen_fruniture" do
    get kitchen_fruniture_url(@kitchen_fruniture)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitchen_fruniture_url(@kitchen_fruniture)
    assert_response :success
  end

  test "should update kitchen_fruniture" do
    patch kitchen_fruniture_url(@kitchen_fruniture), params: { kitchen_fruniture: { content: @kitchen_fruniture.content, name: @kitchen_fruniture.name, price: @kitchen_fruniture.price, title: @kitchen_fruniture.title } }
    assert_redirected_to kitchen_fruniture_url(@kitchen_fruniture)
  end

  test "should destroy kitchen_fruniture" do
    assert_difference("KitchenFruniture.count", -1) do
      delete kitchen_fruniture_url(@kitchen_fruniture)
    end

    assert_redirected_to kitchen_frunitures_url
  end
end
