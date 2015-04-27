require('rspec')
require('parcel.rb')

describe(Parcel) do
  describe("#shipping_cost") do
    it("will return a cost based on the weight of a package of rare orchids") do
      test_parcel=Parcel.new(16, 1, 1, 1, "uncommon")
      expect(test_parcel.weight_shipping_cost()).to(eq(100))
    end
  end
end
