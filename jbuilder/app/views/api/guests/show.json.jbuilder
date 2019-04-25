json.partial! 'api/guests/guest', guest: @guest

json.set! :gifts do
  json.array! @guest.gifts.each do |gift|
   json.extract! gift, :title, :description
  end
end