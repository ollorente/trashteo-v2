class QualificationsController < ApplicationController
  before_action :authenticate_user
  before_action :set_qualification, only: [:show, :update, :destroy]

  # GET /qualifications
  def index
    @qualifications = Qualification.all

    render json: @qualifications
  end

  # GET /qualifications/1
  def show
    render json: @qualification
  end

  # POST /qualifications
  def create
    @qualification = Qualification.new(qualification_params)

    if @qualification.save
      render json: @qualification, status: :created, location: @qualification
    else
      render json: @qualification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /qualifications/1
  def update
    if @qualification.update(qualification_params)
      render json: @qualification
    else
      render json: @qualification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /qualifications/1
  def destroy
    @qualification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qualification
      @qualification = Qualification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def qualification_params
      params.require(:qualification).permit(:transaction_id, :value, :feedback, :active)
    end
end
