def begins_with_r(array_of_words)
  !array_of_words.index { |word| word[0].upcase != 'R' }
end

def contain_a(array_of_words)
  array_of_words.select { |word| word.upcase.include? 'A' }
end

def first_wa(array_of_words)
  array_of_words.find { |word| word.slice(0, 2).upcase == 'WA' }
end

def remove_non_strings(array)
  array.select { |word| word.is_a? String }
end

def count_elements(array)
  counting_hash = {}
  array.each { |item|
    if counting_hash[item[:name]]
      counting_hash[item[:name]] += 1
    else
      counting_hash[item[:name]] = 1
    end
  }
  counting_hash.keys.map { |key|
    a = {:name => key, :count => counting_hash[key]}
  }
end

def merge_data(keys, data)
  keys.map { |key| key.merge(data[0][key[:first_name]]) }
end

def find_cool(cool)
  cool.select { |data_hash| data_hash.has_value?("cool") }
end

def organize_schools(schools)
  locations = {}
  schools.each { |school, value|
    if !locations[value[:location]]
      locations[value[:location]] = [school]
    else
      locations[value[:location]] << school
    end
  }
  locations
end
