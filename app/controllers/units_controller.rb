class UnitsController < ApplicationController
  before_action :set_unit, only: %i[show update destroy]

  # GET /units/new
  def new; end

  # GET /units
  def index
    @units = Unit.order('created_at DESC')

    units_data = @units.map do |unit|
      unit_data = unit.as_json
      unit_data['image_urls'] = if unit.images.attached?
                                  unit.images.map { |image| url_for(image) }
                                else
                                  []
                                end
      unit_data
    end

    render json: units_data
  end

  # GET /units/1
  def show
    @unit = Unit.find(params[:id])
    @unit_data = @unit.as_json
    @unit_data['image_urls'] = @unit.images.map { |image| url_for(image) }
    render json: @unit_data
  end

  # POST /units
  def create
    @unit = Unit.new(unit_params)

    user_id = params[:unit][:user_id]
    @unit.user_id = user_id

    if @unit.save
      unit_data = @unit.as_json
      unit_data['image_urls'] = @unit.images.map { |image| url_for(image) }
      render json: { unit: unit_data, message: 'Unit created successfully' }, status: :created
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /units/1
  def update
    if @unit.update(unit_params)
      render json: @unit
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /units/1
  def destroy
    @unit.destroy!
    render json: { message: 'Unit successfully destroyed' }
  rescue StandardError => e
    render json: { error: "Failed to destroy unit: #{e.message}" }, status: :unprocessable_entity
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_unit
    @unit = Unit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def unit_params
    params.require(:unit).permit(:name, :unit_type, :price, :description, :location, images: [])
  end
end
