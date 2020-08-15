class Subject < ApplicationRecord
  # belongs_to :teacher
  has_many :students
  has_one :mark
  belongs_to :teacher
end