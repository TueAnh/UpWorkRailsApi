
class SeekerProfileSerializer < ActiveModel::Serializer
  #giúp mình define lại file json 
  # rails g serializer <Model> 
  attributes :id, :title, :location, :user_id, :user_name, :user_image,:user_email, :current_salary, :created_at_convert,

  def user_name
    object.user.name
  end

  def user_email
    object.user.email
  end

  def user_image
    object.user.user_image
  end

  def education_details
    object.education_details
  end

  def created_at_convert
    Time.at(object.created_at).strftime("%B %e, %Y")
  end

end
