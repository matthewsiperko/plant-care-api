class UserPlantsController < ApplicationController
  before_action :set_user_plant, only: %i[ show update destroy ]

  # GET /user_plants
  def index
    @user_plants = UserPlant.all

    render json: @user_plants
  end

  # GET /user_plants/1
  def show
    render json: @user_plant
  end

  # POST /user_plants
  def create
    @user_plant = UserPlant.new(user_plant_params)

    if @user_plant.save
      render json: @user_plant, status: :created, location: @user_plant
    else
      render json: @user_plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_plants/1
  def update
    if @user_plant.update(user_plant_params)
      render json: @user_plant
    else
      render json: @user_plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_plants/1
  def destroy
    @user_plant.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plant
      @user_plant = UserPlant.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_plant_params
      params.expect(user_plant: [ :name, :latin_name, :light, :soil, :water, :temperature, :humidity ])
    end
end
