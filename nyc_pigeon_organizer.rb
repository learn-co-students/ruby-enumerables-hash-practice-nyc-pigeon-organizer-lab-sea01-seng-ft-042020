require 'pry'

def nyc_pigeon_organizer(data)

pigeons = {}

data.each do |attributes, value_hash|
  value_hash.each do |descriptions, names_array|
    names_array.each do |name|
    #binding.pry
      if pigeons[name] == nil 
         pigeons[name] = {}
      end
      if pigeons[name][attributes] == nil
         pigeons[name][attributes] = []
      end
        pigeons[name][attributes] << descriptions.to_s 
    end
  end
end

return pigeons 

end
