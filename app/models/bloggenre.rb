class Bloggenre < ApplicationRecord
  has_many :blogpost

  validate name, presence: {message: 'は、必須項目です。'}
end
