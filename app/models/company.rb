class Company < ApplicationRecord
    has_many :job_posts
    has_many :company_images
    belongs_to :job_type
    belongs_to :business_stream
end
