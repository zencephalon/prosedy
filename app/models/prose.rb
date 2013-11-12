class Prose < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  belongs_to :user

  validates :user_id, presence: true

  validates :title, presence: true

  def should_generate_new_friendly_id?
    title_changed?
  end
end
