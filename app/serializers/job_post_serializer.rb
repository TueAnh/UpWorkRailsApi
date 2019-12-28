class JobPostSerializer < ActiveModel::Serializer
  attributes :id,:job_description,:created_at_convert,:updated_at_convert,:user_id,:category_id,:job_location_id,:job_type_id,:company_id
  
  def created_at_convert
    Time.at(object.created_at).strftime("%B %e, %Y")
  end
  def updated_at_convert
    Time.at(object.updated_at).strftime("%B %e, %Y")
  end
end
