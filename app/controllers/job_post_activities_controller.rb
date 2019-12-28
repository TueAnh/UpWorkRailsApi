class JobPostActivitiesController < ApplicationController
  before_action :set_job_post_activity, only: [:show, :update, :destroy]
  before_action :authenticate_request, only: []
  # GET /job_post_activities
  def index
    @job_post_activities = JobPostActivity.all

    render json: @job_post_activities
  end

  # GET /job_post_activities/1
  def show
    render json: @job_post_activity
  end

  # POST /job_post_activities
  def create
    @job_post_activity = JobPostActivity.new(job_post_activity_params)

    if @job_post_activity.save
      render json: @job_post_activity, status: :created, location: @job_post_activity
    else
      render json: @job_post_activity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_post_activities/1
  def update
    if @job_post_activity.update(job_post_activity_params)
      render json: @job_post_activity
    else
      render json: @job_post_activity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_post_activities/1
  def destroy
    @job_post_activity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post_activity
      @job_post_activity = JobPostActivity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_post_activity_params
      params.fetch(:job_post_activity, {})
    end
end
