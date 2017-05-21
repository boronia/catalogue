RSpec.describe Wishlist, type: :model do

  describe Wishlist do
    it { is_expected.to have_many(:books) }
  end
end
