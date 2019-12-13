class SeekerProfileSerializer < ActiveModel::Serializer
  #giúp mình define lại file json 
  # rails g serializer <Model> 
  attributes :id, :title, :user_id, :user_name

  def user_name
    object.user.name
  end

end
