

def nyc_pigeon_organizer(data)

new_hash = {}
data.map do |key,value|
value.map do |inner_key,inner_value|
inner_value.map do |name|
  if !new_hash[name]
    new_hash[name]={}
    end
    if !new_hash[name][key]
      new_hash[name][key]= []
    end
new_hash[name][key] << inner_key.to_s


end
end
end
new_hash
#binding.pry
end
nyc_pigeon_organizer(pigeon_data = {
          :color => {
            :brown => ["Luca"],
            :black => ["Lola"],
          },
          :gender => {
            :male => ["Luca"],
            :female => ["Lola"]
          },
          :lives => {
            "Central Park" => ["Lola"],
            "Library" => ["Luca"]
          }
        })
