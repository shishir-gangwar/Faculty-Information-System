class Faculty < ApplicationRecord

  has_secure_password

  belongs_to :department

  has_many :achievements, :dependent => :delete_all
  has_many :experiences, :dependent => :delete_all
  has_many :qualifications, :dependent => :delete_all
  has_many :interest_areas, :dependent => :delete_all
  has_many :leave_applications, :dependent => :delete_all

  has_and_belongs_to_many :projects
  has_and_belongs_to_many :publications
  has_and_belongs_to_many :courses
end
