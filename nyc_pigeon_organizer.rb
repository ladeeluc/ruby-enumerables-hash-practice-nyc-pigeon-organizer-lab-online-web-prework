require 'pry'
def nyc_pigeon_organizer(data) # given method
  new_hash = {} # created empty hash for new hash
  data.each do |attributes,name| # takes each element of an array
    #creating a place holder. retruns orginal unchanged object
    name.each do |feature,home|
      home.each do |birds|
        if !new_hash[birds]# bang method forces new hash to Iterate
          # data into new array
          new_hash[birds] = {}
          new_hash [birds][attributes] = []
          binding.pry
        end
        #if !birds| do
          #new_hash[birds] = {}
        end
    #names = {
      #pigeon_list:"Theo","Peter Jr.","Lucky","ms_k","Queenie","Andrew","Alex"
      end

    end

end
