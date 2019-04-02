class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes,  dependent: :nullify
  has_many :comments, dependent: :nullify
end
