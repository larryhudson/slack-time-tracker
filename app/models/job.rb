class Job < ApplicationRecord
  has_many :job_entries
  belongs_to :user
end
