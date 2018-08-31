def begins_with_r(array)
  matches = array.select {|item| item.start_with? "r"}
  matches.count == array.count ? true : false
end

def contain_a(array)
  array.select {|string| string.include?("a")}
end

def first_wa(array)
  first_wa = nil
  
  array.each do |item|
    if item[0] == "w" && item[1] == "a"
      return item
      break
    end
  end
  
  first_wa
end

def remove_non_strings(array)
  array.select {|i| i.class == String }
end

def count_elements(array_of_hashes)
  new_array = array_of_hashes.each do |main_hash|
    main_hash[:count] = 0
    # name = main_hash[:name]
    
    array_of_hashes.each do |sort_hash|
      if sort_hash[:name] == main_hash[:name]
        main_hash[:count] += 1
      end
    end
  end
  
  new_array.uniq
end

def merge_data(keys, values)
  merged_data = []
  
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_info|
      if person_info[name]
        full_person = person_info[name]
        full_person[:first_name] = name
        merged_data << full_person
      end
    end
  end
  
  merged_data
end

def find_cool(array_of_hashes)
  cool_hashes = []
  
  array_of_hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  
  return cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
  
  schools.each do |school_name, school_location|
    location = school_location[:location]
    if organized_schools[location]
      organized_schools[location] << school_name
    else
      organized_schools[location] = [school_name]
    end
  end
  return organized_schools
end