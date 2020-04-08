def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  
  data.each do |key, h|
  
    h.each do |k, arr|
    
      arr.each do |name|
        if !hash.has_key?(name)
        hash[name] = {}
       end 
       if !hash[name].has_key?(key)
         hash[name][key] = []
       end
       if !hash[name][key].include?(k)
         hash[name][key] << k.to_s 
       end 
end 
end
end
 hash
end
