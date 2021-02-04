

def nyc_pigeon_organizer(data)

a = data.each_with_object({}) do |(key, value), new_hash|
   value.each do |inner_key, inner_value|
    inner_value.each do |name|
      if !new_hash[name]
        new_hash[name]={}
        end
        if !new_hash[name][key]
          #new_hash[name][key]<<[(inner_key.to_s)]
          new_hash[name][key]= []
      end
new_hash[name][key] << inner_key.to_s

#new_hash[name][key] <<(inner_key.to_s)






end
end
end

p a


end
nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })
