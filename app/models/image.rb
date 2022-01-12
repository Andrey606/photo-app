class Image < ApplicationRecord
  belongs_to :user
  # we use gem 'carrierwave' where picture - attribute of this model(Image)
  # first need to execute: rails generate uploader Picture
  mount_uploader :picture, PictureUploader

  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less then 5 mb")
    end
  end
end
