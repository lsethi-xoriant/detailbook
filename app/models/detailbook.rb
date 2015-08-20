class Detailbook < ActiveRecord::Base
  belongs_to :user
  validates :name, :phone, presence: true
  validates :name, presence: true, uniqueness:  { case_sensitive: false}
end
