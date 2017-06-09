require 'rails_helper'

RSpec.describe Wishlist, type: :model do

  describe Wishlist do
    it { is_expected.to have_and_belong_to_many(:books)}
  end
end
