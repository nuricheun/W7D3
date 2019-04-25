json.set! :parties do
  @parties.each do |party|
    json.set! party.id do
      json.extract! party, :name
      
      json.set! :guests do
        json.array! party.guests.each do |guest|
          json.extract! guest, :name
        end
      end
    end
  end
end