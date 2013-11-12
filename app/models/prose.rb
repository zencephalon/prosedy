class Prose < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  validates :user_id, presence: true

  validates :title, presence: true
end
