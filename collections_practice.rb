def begins_with_r(array)
  truth = true
  array.each do |arr|
    if arr[0] != "r"
      truth = false
    end
  end
  truth
end

def contain_a(array)
  list = []
  array.each do |arr|
    arr.each_char do |a|
      if a == "a"
        list << arr
      end
    end
  end
  list
end

def first_wa(array)
  wa = ""
  array.each do |arr|
    if wa == ""
      if arr[0..1] == "wa"
        wa = arr
      end
    end
  end
  wa
end

def remove_non_strings(array)
  strangz = []
  array.each do |arr|
    if arr.class == String
      strangz << arr
    end
  end
  strangz
end

def count_elements(array)
  counts = Hash.new(0)
  array.each do |name|
    name.each do |keyz, valz|
      counts[valz] += 1
    end
  end
  reform = []
  counts.each do |k, v|
    reform << {name: k, count: v}
  end
  reform
end

def merge_data(keys, data)
  keys.each do |bout1|
    bout1.each do |fn, n|
      data.each do |bout2|
        bout2.each do |mm, hm|
          hm[fn] = mm
        end
      end
    end
  end
  mergey = []
  data.each do |bout|
    bout.each do |bkey, bval|
      mergey << bval
    end
  end
  mergey
end

def find_cool(cool)
  counter = 0
  arr = []
  cool.each do |h|
    if h.has_value?("cool")
      arr << h
    end
  end
  arr
end

def organize_schools(schools)
  cities = []
  city_hash = {}
  schools.each do |k, v|
    v.each do |v1, v2|
      cities << v2
    end
  end
  cities = cities.uniq
  cities.each do |city|
    scharr = []
    schools.each do |k, v|
      if v[:location] == city
        scharr << k
      end
    end
    city_hash[city] = scharr
  end
  city_hash
end
