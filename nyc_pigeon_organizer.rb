def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key1, value1|
    value1.each do |key2, value2|
      value2.each do |value3|
        if pigeon_list[value3] == nil
          pigeon_list[value3] = {}
        end
        if pigeon_list[value3][key1] == nil
          pigeon_list[value3][key1] = []
        end
        pigeon_list[value3][key1].push(key2.to_s)
      end
    end
  end
  return pigeon_list
end

