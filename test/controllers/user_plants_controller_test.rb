require "test_helper"

class UserPlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_plant = user_plants(:one)
  end

  test "should get index" do
    get user_plants_url, as: :json
    assert_response :success
  end

  test "should create user_plant" do
    assert_difference("UserPlant.count") do
      post user_plants_url, params: { user_plant: { humidity: @user_plant.humidity, latin_name: @user_plant.latin_name, light: @user_plant.light, name: @user_plant.name, soil: @user_plant.soil, temperature: @user_plant.temperature, water: @user_plant.water } }, as: :json
    end

    assert_response :created
  end

  test "should show user_plant" do
    get user_plant_url(@user_plant), as: :json
    assert_response :success
  end

  test "should update user_plant" do
    patch user_plant_url(@user_plant), params: { user_plant: { humidity: @user_plant.humidity, latin_name: @user_plant.latin_name, light: @user_plant.light, name: @user_plant.name, soil: @user_plant.soil, temperature: @user_plant.temperature, water: @user_plant.water } }, as: :json
    assert_response :success
  end

  test "should destroy user_plant" do
    assert_difference("UserPlant.count", -1) do
      delete user_plant_url(@user_plant), as: :json
    end

    assert_response :no_content
  end
end
