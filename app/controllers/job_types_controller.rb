class JobTypesController < ApplicationController
  before_action :set_job_type, only: [:show, :update, :destroy]

  # GET /job_types
  def index
    @job_types = JobType.all

    render json: @job_types
  end

  # GET /job_types/1
  def show
    render json: @job_type
  end

  # POST /job_types
  def create
    @job_type = JobType.new(job_type_params)

    if @job_type.save
      render json: @job_type, status: :created, location: @job_type
    else
      render json: @job_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_types/1
  def update
    if @job_type.update(job_type_params)
      render json: @job_type
    else
      render json: @job_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_types/1
  def destroy
    @job_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_type
      @job_type = JobType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_type_params
      params.fetch(:job_type, {})
    end
end
