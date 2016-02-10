class CodeSchool < ActiveRecord::Base
  has_many :students, class_name: 'User'
  has_many :projects, through: :students
  has_many :things, through: :projects
end
