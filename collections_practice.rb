# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?('r')}
end

def contain_a(array)
  array.select {|ele| ele.include?('a')}
end

def first_wa(array)
  array.find {|ele|
    if ele.instance_of?(String)
      ele.start_with?("wa")
    elsif ele.instance_of?(Symbol)
      ele.to_s.start_with?("wa")
    else
      False
    end
  }
end

def remove_non_strings(array)
  array.select {|ele| ele.instance_of?(String)}
end

def count_elements(array)
  count = array.uniq
  count.collect {|ele| ele[:count] = array.count(ele)
  ele}
end

def merge_data(keys,data)
  merged = []
  keys.each {|key|
    key.each {|k,value|
      data.each {|datum|
        datum.each {|k1,v1| #identifier and attributes
          if k1 == value
            v1[k] = value
            merged << v1
          end

        }
      }
    }
  }
  merged
end

def find_cool(array)
  array.select {|hash|
    hash.values.member?("cool")
  }
end

def organize_schools(collection)
  organized = {}
  collection.each {|key,value|
    city = value[:location]
    if organized.keys.member?(city)
      organized[city] << key
    else
      organized[city] = [key]
    end
  }
  organized
end
