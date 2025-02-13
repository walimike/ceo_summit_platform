class QuizResponse < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  belongs_to :quiz_option
end
