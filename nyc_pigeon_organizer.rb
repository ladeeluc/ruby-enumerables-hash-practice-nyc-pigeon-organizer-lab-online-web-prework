require 'pry'

def nyc_pigeon_organizer(data) # given method and arg. with parameter
  pig_hash = {} # created empty hash for new hash
  data.each do |attribute, attribute_values| # takes each element of the  whole array
    #creating a place holder. retruns orginal unchanged hash. goes through entire nested hash to pull out first key of each
    # of th each of the nested keys with their values. and returns results of :color, :gender ,:lives
    attribute_values.each do |feature_name, pigeons|#takes each element of an array
      #creating a place holder. retruns orginal unchanged hash. goes through the the third key
      # to pull out the values for each key
      pigeons.each do |pigeon|#takes each element of an array
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
  pig_hash
end
