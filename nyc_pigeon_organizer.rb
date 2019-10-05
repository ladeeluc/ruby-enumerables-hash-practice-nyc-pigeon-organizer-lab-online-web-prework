require 'pry'
require 'pp'

def nyc_pigeon_organizer(data) # given method and arg. with parameter
  pp data
  pig_hash = {} # created empty hash for new hash
  data.each do |attribute, attribute_values| # takes each element of an array
    #creating a place holder. retruns orginal unchanged object
    attribute_values.each do |feature_name, pigeons|#takes each element of an array
      #creating a place holder. retruns orginal unchanged object
      pigeons.each do |pigeon|#takes each element of an array
          pp pigeon
          if pig_hash[pigeon] == nil
            pig_hash[pigeon] = {}
          end
          if pig_hash[pigeon][attribute] == nil
            pig_hash[pigeon][attribute] = []
          end
          pig_hash[pigeon][attribute].push(feature_name.to_s);
          
      end
    end
  end
  pp pig_hash
  pig_hash
end
