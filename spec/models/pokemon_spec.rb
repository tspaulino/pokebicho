require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:number) }

  describe "uniqueness" do
    subject { Pokemon.new(name: "Bulbasaur", number: 1) }

    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_uniqueness_of(:number) }
  end

end
