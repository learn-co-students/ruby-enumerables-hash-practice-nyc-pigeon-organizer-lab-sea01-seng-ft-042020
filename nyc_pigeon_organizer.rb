def nyc_pigeon_organizer(data)
  # Initializing pigeon_names
  pigeon_names = []
  # Loop through the two leveled hash to all included pigeon names
  data.each_pair do |key_i, value_i|
    value_i.each_pair do |key_j, value_j|
      pigeon_names.push(value_j)
    end
  end
  # Parse down to get only uniq pigeon_names
  pigeon_names = pigeon_names.flatten.uniq
  # Initializing new_data
  new_data = {}
  #  Populate new_data by matching pigeon_names with original data set
  pigeon_names.collect do |name|
    new_data[name] = {}
    # Populating attributes keys
    data.each_pair do |key_i, value_i|
      new_data[name].merge!({key_i => []})
      # Populating attributes values
      value_i.each_pair do |key_j, value_j|
        # Push attribute value if the name is found in original data set
        new_data[name][key_i].push(key_j.to_s) if value_j.any? {|element| name == element}
      end
    end
  end
  new_data
end

# pretty sure im not using the enumrables correctly. I am just using them as loops but they should be able to assign stuf on their own.
