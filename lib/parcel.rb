class Parcel
  define_method(:initialize) do |weight, length, width, height, rarity|
    @weight=weight
  end

  define_method(:shipping_cost) do
    @weight
  end



end
