class Parcel
  define_method(:initialize) do |weight, length, width, height, rarity|
    @weight = weight
    @length = length
    @width = width
    @height = height
    @rarity = rarity
  end

  define_method(:weight_shipping_cost) do
    weight_cost = 0
    if @weight.<=(16)
      weight_cost = 100
    elsif @weight.>(16) && @weight.<=(32)
      weight_cost = 120
    else
      weight_cost = 140
    end

  end

end
