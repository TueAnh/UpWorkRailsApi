class JobPostsController < ApplicationController
  before_action :set_job_post, only: [:show, :update, :destroy]
  before_action :set_job_post_user , only: [:findAllUserInPost, :details]
  before_action :authenticate_request, only: []
  # GET /job_posts
  def index
    @job_posts = JobPost.all

    render json: @job_posts
  end

  # GET /job_posts/1
  def show
    render json: @job_post
  end

  # POST /job_posts
  def create
    # 
    @job_post = JobPost.new(job_post_params)
    # byebug
    if @job_post.save
      render json: @job_post, status: :created, location: @job_post
    else
      render json: @job_post.errors, status: :unprocessable_entity
    end
  end
  def findAllUserInPost
    # byebug
    @users = @job_post.users
    render json: @users
  end

  def search
    search_job_post_params
    chuoi =  '%'+params[:key]+'%'
    @job_posts = JobPost.where("job_description like ?", chuoi)
    render json: @job_posts
  end

  def details
    render json: {
      job_description: @job_post.as_json(only: [:id,:job_description]),
      type: @job_post.job_type.as_json(only: [:id,:job_type]),
      location: @job_post.job_location.as_json(only: [:id,:street_address,:city,:country]),
      company: {
        company: @job_post.company.as_json(only: [:id,:company_name]),
        image: @job_post.company.company_images.as_json(only: [:company_image])
      }
    }
  end

  def list_details
    job_post_arr = []
    # byebug
    JobPost.all.each_with_index do |j,i|
      # JobPost.all[i] = j
      @object = {
        job_description: j.as_json(only: [:id,:job_description]),
        type: j.job_type.as_json(only: [:id,:job_type]),
        location: j.job_location.as_json(only: [:id,:country]),
        company: {
          company: j.company.as_json(only: [:id,:company_name]),
          image: j.company.company_images.as_json(only: [:company_image])
        }
      }

      job_post_arr << @object
    end
    render json: job_post_arr

  end

  # PATCH/PUT /job_posts/1
  def update
    if @job_post.update(job_post_update_params)
      render json: @job_post
    else
      render json: @job_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_posts/1
  def destroy
    @job_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_post
      @job_post = JobPost.find(params[:id])
    end

    def set_job_post_user
      
      @job_post = JobPost.find(params[:job_post_id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_post_params
      params.permit(:job_description,:user_id,:category_id,:job_type_id,:job_location_id,:company_id)
    end
    def job_post_update_params
      params.require(:job_post).permit(:id,:job_description,:user_id,:category_id,:job_type_id,:job_location_id)
    end
    def search_job_post_params
      params.permit(:key)
    end
end
