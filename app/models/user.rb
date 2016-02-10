class User < ActiveRecord::Base
  # validates :user, unique: true
  # validates :email, presence: true

  belongs_to :code_school
  has_one :profile
  has_many :projects

  scope :active, -> { where(active: true)}
  # def self.active
  #   where(active: true) # .where(paid: true, events: true)
  # end

  scope :cohort, ->(number) { where(cohort: number)}
  # def self.cohort(number)
  #   where(cohort: number)
  # end

  def self.active_cohort(number)
    active.cohort(number)
  end
end
