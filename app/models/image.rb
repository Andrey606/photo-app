class Image < ApplicationRecord
  belongs_to :user
  # we use gem 'carrierwave' where picture - attribute of this model(Image)
  # first need to execute: rails generate uploader Picture
  mount_uploader :picture, PictureUploader
end
