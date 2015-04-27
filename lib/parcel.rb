class Parcel
  define_method(:initialize) do |weight, height, rarity|
    @weight = weight
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
    @weight_cost = weight_cost
  end

  define_method(:box_shipping_cost) do
    box_cost = 0
    if @height.<=(12)
      box_cost = 25
    elsif @height.<=(18)
      box_cost = 30
    elsif @height.<=(24)
      box_cost = 35
    else
      box_cost = 40
    end
    @box_cost=box_cost
  end

    define_method(:shipping_cost) do
    end

end
