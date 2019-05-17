class Image < ApplicationRecord

  mount_uploader :picture, PictureUploader
  # Includes

  # Attributes
  
  # Associations
  belongs_to :user

  # Delegates

  # Constants

  # Validations
  validate :picture_size

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
