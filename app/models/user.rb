class User < ActiveRecord::Base
  include Clearance::User
  has_many :jobs
  has_many :educations
  has_many :languages
  has_many :personal_info
  has_many :projects
  has_many :skills
  has_one :about
end
