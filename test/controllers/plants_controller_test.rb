require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plant = plants(:one)
  end

  test "should get index" do
    get plants_url, as: :json
    assert_response :success
  end

  test "should create plant" do
    assert_difference("Plant.count") do
      post plants_url, params: { plant: { humidity: @plant.humidity, latin_name: @plant.latin_name, light: @plant.light, name: @plant.name, soil: @plant.soil, temperature: @plant.temperature, water: @plant.water } }, as: :json
    end

    assert_response :created
  end

  test "should show plant" do
    get plant_url(@plant), as: :json
    assert_response :success
  end

  test "should update plant" do
    patch plant_url(@plant), params: { plant: { humidity: @plant.humidity, latin_name: @plant.latin_name, light: @plant.light, name: @plant.name, soil: @plant.soil, temperature: @plant.temperature, water: @plant.water } }, as: :json
    assert_response :success
  end

  test "should destroy plant" do
    assert_difference("Plant.count", -1) do
      delete plant_url(@plant), as: :json
    end

    assert_response :no_content
  end
end
