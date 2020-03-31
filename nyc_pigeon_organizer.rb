require 'pry'
def nyc_pigeon_organizer(data)
  pigeons_by_name = {}
  data.each do |attribute, groups| 
    groups.each do |key, value|
      value.each do |n|
        unless pigeons_by_name.include?(n)
          pigeons_by_name[n] = {}
        end
        unless pigeons_by_name[n].include?(attribute)
          pigeons_by_name[n][attribute] = []
        end
        pigeons_by_name[n][attribute].push(key.to_s)
      end
    end
  end
  #binding.pry
  pigeons_by_name
end
