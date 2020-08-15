class Student < ApplicationRecord
  has_one :subject
  has_many :marks
end