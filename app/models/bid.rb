class Bid < ActiveRecord::Base
  extend Enumerize
  belongs_to :user

  enumerize :category, in: [:single], default: :single

  validates :user_id, :category, :code, presence: true

end
