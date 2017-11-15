# your code goes here

def begins_with_r(array)
  array.each do |word|
     if word[0] != "r"
       return false
     end
  end
  true
end

def contain_a(array)
  final = []
  array.each do |word|
  if word.include?("a") == true
    final << word
   end
  end
  return final
end

def first_wa(array)
  array.each do |word|
    if word[0] == 'w' && word[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

# def count_elements(array)
#   value_counter = 0
#   array.each do |key, value|
#
#   end
# end

def merge_data(keys, data)
  final = []
  keys.each do |full_name|
    name = full_name[:first_name]
    data.each do |name_info|
        if name_info[name]
          merged_person = name_info[name]
          merged_person[:first_name] = name
          final << merged_person
        end
      end
    end
    return final
end
