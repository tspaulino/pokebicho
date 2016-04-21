class Pokemon < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  validates :name, :number, presence: true, uniqueness: true

end
