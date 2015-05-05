class Subject < ActiveRecord::Base
  has_many :courses_subjects, dependent: :destroy
  has_many :courses, through: :courses_subjects
  has_many :tasks
  belongs_to :user
end
