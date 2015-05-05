class Course < ActiveRecord::Base
  has_many :courses_subjects, dependent: :destroy
  has_many :subjects, through: :courses_subjects
  belongs_to :user
  accepts_nested_attributes_for :courses_subjects, allow_destroy: true
end
