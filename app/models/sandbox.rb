class Sandbox < ApplicationRecord
  validates :name, presence: true
  validates :sandbox_type, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :expected_end_date, presence: true
  validates :owner, presence: true
  validates :owner_team, presence: true
end
