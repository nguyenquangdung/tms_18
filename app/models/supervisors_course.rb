class SupervisorsCourse < ActiveRecord::Base
  belongs_to :course
  belongs_to :subject
end
