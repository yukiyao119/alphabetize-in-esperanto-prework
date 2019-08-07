require "pry"

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

def alphabetize(arr)
  esperanto_arr = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars  # esperanto_arr.index {|x| x == "b"}  #=> 1   length 28, index 0-27
  result = []
  new_arr = arr
  arr.shift
  # binding.pry
  new_arr.each_with_index do |word, index| 
    arr.each_with_index do |value, i|      # value[i] = "b" 
      if word[index] == value[i]
        index += 1 
        i += 1
      elsif word[index] != value[i]
        i_in_esperanto1 = esperanto_arr.index(word[index])
        i_in_esperanto2 = esperanto_arr.index(value[i])
        if i_in_esperanto1 - i_in_esperanto2 < 0 
          result << word 
          result << value 
        else 
          result << value
          result << word
        end 
      end 
      # binding.pry
    end 
  end 
  result
end
# g_words = ["ĝuste", "ĝis revido"]
# sorted_g_words = ["ĝis revido", "ĝuste"]






