# your code goes here
require "pry"

def begins_with_r(array)
  condition = true
  array.each do |element|
    condition = false if element[0] != "r"
  end
  condition
end

def contain_a(array)
  collection = []
  array.each do |element|
    collection << element if element.include?("a")
  end
  collection
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match("wa")
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  collection = []
  array.each do |element|
    collection << element if element.is_a?(String)
  end
  collection
end

def count_elements(array)
  array.each do |elements_hash|
    #binding.pry
   elements_hash[:count] = 0
   #binding.pry
   name = elements_hash[:name]
   array.each do |new_hash|
     #binding.pry
     if new_hash[:name] == name
       elements_hash[:count] += 1
     end
   end
 end.uniq
end

def merge_data(array1, array2)
  array2[0].map do |name, hash|
    new_hash = {}
    array1.each do |attribute_hash|
      if attribute_hash[:first_name] == name
        new_hash = hash.merge(attribute_hash)
      end
    end
    new_hash
  end
end

def find_cool(array)
  new_array = []
  array.each do |element|
    #binding.pry
    new_array << element if element[:temperature] == "cool"
  end
  new_array
end

def organize_schools(array)
  
end
