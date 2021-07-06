def nyc_pigeon_organizer(data)
  pigeons_by_names = {}
  
  data.each do |characteristics_name, characteristics_values|
    characteristics_values.each do |add_characteristics, names|
      names.each do |name|
        pigeons_by_names[name] ||= {}
        pigeons_by_names[name][characteristics_name] ||= []
        # does this work because the left side returns false because it can't find pigeons_by_names[name] or pigeons_by_names[characteristics_name] so it completes the right side??
        pigeons_by_names[name][characteristics_name] << add_characteristics.to_s
      end
  end
end
pigeons_by_names
end





#found solution that uses pipes and equals. Why does this work but without it my ENTIRE values were missing and only the lives was working??

# def nyc_pigeon_organizer(data)
#   pigeon_list = {}
# data.each do |attribute_name, attributes|
#     attributes.each do |attribute_value, pigeon_names|
#       pigeon_names.each do |name|
#         pigeon_list[name] ||= {}
#         pigeon_list[name][attribute_name] ||= []
#         pigeon_list[name][attribute_name].push(attribute_value.to_s)
#       end
#     end 
#   end
# pigeon_list
# end
