require 'pry'
def nyc_pigeon_organizer(data) # given method and arg. with parameter
  new_hash = {} # created empty hash for new hash
  data.each do |attribute, attribute_values| # takes each element of an array
    #creating a place holder. retruns orginal unchanged object
    attribute_values.each do |feature_name, pigeons|#takes each element of an array
      #creating a place holder. retruns orginal unchanged object
      pigeons.each do |pigeon|#takes each element of an array
          new_hash[pigeon][attribute].push(feature_name)
      end
    end
  end

  puts new_hash

end
