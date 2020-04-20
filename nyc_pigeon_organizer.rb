def nyc_pigeon_organizer(data)
  # write your code here!
  
  temp1 = [] # temporary values with redandancy
  temp2 = [] # keys to pigeon_list
  data.values.each do |element|
    temp1 = element.values
    i = 0 
    while i < temp1.length 
      j = 0 
      while j < temp1[i].length
        if !temp2.include? temp1[i][j]
          temp2 << temp1[i][j]
        end
        j += 1
      end
      i += 1
    end
  end
  
  pigeon_list = {}
  pigeon_list_keys = temp2 # keys to pigeon_list
  data_keys = data.keys # keys to keys to pigeon_list
  
  pigeon_list_keys.each do |plk| # e.g., "Lucky"
    plk_hash = {} # {"color": ["purple"], "gender": ["male"], "lives": [Central Park"]}
    data.keys.each do |dk| # e.g,. "color"
      dk_value = []
      # find dk_value
      original_dk_hash = data[dk]
      # (1) iterate over original_dk_hash's key
      # (2) check if the value contains plk, if yes add the key to dk_value
      original_dk_hash.each do |k, v| 
        if v.include? plk
          dk_value << k.to_s
        end
      end
      
    plk_hash[dk] = dk_value
    end
    pigeon_list[plk] = plk_hash
  end  
  pigeon_list
end
