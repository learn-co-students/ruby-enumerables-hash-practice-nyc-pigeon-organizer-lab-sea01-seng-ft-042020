def nyc_pigeon_organizer(data)
  organized_hash = {}
  
  data.each do |key, value|
    value.each do |item, names|
      names.each do |name|
        organized_hash[name] ||= {}
        organized_hash[name][key] ||= []
        organized_hash[name][key] << item.to_s
      end 
    end
  end
  organized_hash
end