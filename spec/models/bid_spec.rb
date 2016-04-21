require 'rails_helper'

RSpec.describe Bid, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:user_id) }
  it { is_expected.to validate_presence_of(:category) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to enumerize(:category).in(:single).with_default(:single) }
end
