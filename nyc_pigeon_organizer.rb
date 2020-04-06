require 'pry'

def nyc_pigeon_organizer(data)
  organized = {}
  data.each do | x , y |
    y.each do | to_string , name_array |
      name_array.each do |name|
        if organized[name] == nil
          organized[name] = {}
        end 
        if organized[name][x] == nil 
          organized[name][x] = []
        end
        organized[name][x].push(to_string.to_s)
      end
    end
  end
  organized
end