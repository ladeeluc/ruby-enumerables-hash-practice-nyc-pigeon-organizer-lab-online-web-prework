require 'pry'

def nyc_pigeon_organizer(data) # given method and arg. with parameter
  pig_hash = {} # created empty hash for new hash
  data.each do |attribute, attribute_values| # takes each element of the  whole array
    #creating a place holder. retruns orginal unchanged hash. goes through entire nested hash to pull out first key of each
    # each of the nested keys with their values. iterates these keys :color, :gender ,:lives
    attribute_values.each do |feature_name, pigeons|#takes each element of an array
      #creating a place holder. retruns orginal unchanged hash. iterates through the array of feature_name and pigeons
      # to pull out the values which are the names of the pigeons in a string for each key
      pigeons.each do |pigeon|# makes the string of  names
          if pig_hash[pigeon] == nil #asks if not stringthere. if it not there then it
            # creates an empty hash
            pig_hash[pigeon] = {} # creates empty hash for every bird name in values for all keys a empty array
          end
          if pig_hash[pigeon][attribute] == nil
            pig_hash[pigeon][attribute] = []
          end

          pig_hash[pigeon][attribute].push(feature_name.to_s);
      end
    end
  end
  pig_hash
end
