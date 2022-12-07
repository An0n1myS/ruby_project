require "application_system_test_case"

class KitchenFrunituresTest < ApplicationSystemTestCase
  setup do
    @kitchen_fruniture = kitchen_frunitures(:one)
  end

  test "visiting the index" do
    visit kitchen_frunitures_url
    assert_selector "h1", text: "Kitchen frunitures"
  end

  test "should create kitchen fruniture" do
    visit kitchen_frunitures_url
    click_on "New kitchen fruniture"

    fill_in "Content", with: @kitchen_fruniture.content
    fill_in "Name", with: @kitchen_fruniture.name
    fill_in "Price", with: @kitchen_fruniture.price
    fill_in "Title", with: @kitchen_fruniture.title
    click_on "Create Kitchen fruniture"

    assert_text "Kitchen fruniture was successfully created"
    click_on "Back"
  end

  test "should update Kitchen fruniture" do
    visit kitchen_fruniture_url(@kitchen_fruniture)
    click_on "Edit this kitchen fruniture", match: :first

    fill_in "Content", with: @kitchen_fruniture.content
    fill_in "Name", with: @kitchen_fruniture.name
    fill_in "Price", with: @kitchen_fruniture.price
    fill_in "Title", with: @kitchen_fruniture.title
    click_on "Update Kitchen fruniture"

    assert_text "Kitchen fruniture was successfully updated"
    click_on "Back"
  end

  test "should destroy Kitchen fruniture" do
    visit kitchen_fruniture_url(@kitchen_fruniture)
    click_on "Destroy this kitchen fruniture", match: :first

    assert_text "Kitchen fruniture was successfully destroyed"
  end
end
