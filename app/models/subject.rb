class Subject < ActiveRecord::Base
  belongs_to :user
  has_many :courses_subjects, dependent: :destroy
  has_many :courses, through: :courses_subjects
  has_many :tasks, dependent: :destroy
  
  accepts_nested_attributes_for :tasks,
    reject_if: proc {|attributes| attributes['name'].blank?},
    allow_destroy: true
  validates :name, presence: true
  validates :user, presence: true
  validates :description, presence: true, length: {maximum: 140}

  def subject_infomation
    "#{self.name} (created by suppervisor '#{self.user.name}')"
  end
end
