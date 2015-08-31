require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  describe JobApplication do
  it { should validate_presence_of(:company_name) }
  it { should validate_presence_of(:job_title) }
end
