# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  photo      :string
#  event_id   :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  scope :persisted, -> { where "id IS NOT NULL" }
end
