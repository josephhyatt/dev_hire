class Meeting < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destory
end
