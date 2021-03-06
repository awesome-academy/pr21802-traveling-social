class City < ApplicationRecord
  belongs_to :user
  has_many :locations, inverse_of: :city
  
  validates :name, :thumbnail, presence: true
  mount_uploader :thumbnail, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
  serialize :address, JSON

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end
