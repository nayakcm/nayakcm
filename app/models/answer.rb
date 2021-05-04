class Answer < ApplicationRecord
  belongs_to :question, required: true
  belongs_to :user, required: true
end
