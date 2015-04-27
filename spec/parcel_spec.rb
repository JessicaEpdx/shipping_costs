require('rspec')
require('parcel.rb')
require('pry')

describe(Parcel) do
  describe("#shipping_cost") do
    it("will return a cost based on the weight of a package of rare orchids") do
      test_parcel=Parcel.new(16, 12, "uncommon")
      expect(test_parcel.weight_shipping_cost()).to(eq(100))
    end
    it("will return a cost based on the box size of a package of rare orchids") do
      test_parcel=Parcel.new(16, 12, "uncommon")
      expect(test_parcel.box_shipping_cost()).to(eq(25))
    end
    it("will return a cost based on the rarity of a package of rare orchids") do
      test_parcel=Parcel.new(16, 12, "uncommon")
      expect(test_parcel.rarity_shipping_cost()).to(eq(50))
    end
    it("will return a cost based on all input factors") do
      test_parcel=Parcel.new(16, 12, "uncommon")
      test_parcel.weight_shipping_cost()
      test_parcel.box_shipping_cost()
      test_parcel.rarity_shipping_cost()
      expect(test_parcel.shipping_cost()).to(eq(175))
    end
  end
end
