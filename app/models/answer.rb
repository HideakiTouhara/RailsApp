class Answer < ApplicationRecord
  belongs_to :quqestion
  validates :content, :name, presence: {message:'は、必須項目です。'}
end
