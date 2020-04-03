require "pry"

def nyc_pigeon_organizer(data)
  pidgeon_list = {}
  data.each do |attribute, value|
    value.each do |value2, names|
      names.each do |name|
          if pidgeon_list[name] == nil
            pidgeon_list[name] = {}
          end
          if pidgeon_list[name][attribute] == nil
            pidgeon_list[name][attribute] = []
          end
          pidgeon_list[name][attribute] << value2.to_s
 #                   binding.pry
      end
    end
  end
    pidgeon_list
end

# #pigeon_list = {
# #  "Theo" => {
# #    :color => ["purple", "grey"],
# #    :gender => ["male"],
#     :lives => ["Subway"]
#   },