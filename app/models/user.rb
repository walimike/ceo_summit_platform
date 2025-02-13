class User < ApplicationRecord
  has_secure_password

  enum role: { student: 0, admin: 1 }

  has_many :courses, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :quiz_responses, dependent: :destroy
  has_many :certificates, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :payments, dependent: :destroy
end
