class SeekerProfilesController < ApplicationController
  before_action :set_seeker_profile, only: [:show, :update, :destroy]

  # GET /seeker_profiles
  def index
    @seeker_profiles = SeekerProfile.all

    render json: @seeker_profiles
  end

  # GET /seeker_profiles/1
  def show
    render json: @seeker_profile
  end

  

  # POST /seeker_profiles
  def create
    @seeker_profile = SeekerProfile.new(seeker_profile_params)

    if @seeker_profile.save
      render json: @seeker_profile, status: :created, location: @seeker_profile
    else
      render json: @seeker_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seeker_profiles/1
  def update
    if @seeker_profile.update(seeker_profile_params)
      render json: @seeker_profile
    else
      render json: @seeker_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seeker_profiles/1
  def destroy
    @seeker_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker_profile
      @seeker_profile = SeekerProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seeker_profile_params
      params.fetch(:seeker_profile, {})
    end
end
