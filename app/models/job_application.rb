class JobApplication < ActiveRecord::Base
  belongs_to :user
  validates :company_name, :job_title, presence: true
  validates :company_name, presence: true, uniqueness:  { case_sensitive: false}
end
