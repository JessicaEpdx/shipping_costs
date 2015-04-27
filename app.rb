require('sinatra')
require('sinatra/reloader')
require('./lib/parcel.rb')
also_reload('/lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/shippingcost') do
  @weight=(params.fetch('weight')).to_i
  @height=(params.fetch('height')).to_i
  @rarity=(params.fetch('rarity'))
  parcel=Parcel.new(@weight, @height, @rarity)
  @total_cost=parcel.shipping_cost()
  erb(:shippingcost)
end
