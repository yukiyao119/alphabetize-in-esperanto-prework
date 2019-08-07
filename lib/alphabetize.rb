require "pry"

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

def alphabetize(arr)
  esperanto_arr = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars  # esperanto_arr.index {|x| x == "b"}  #=> 1   length 28, index 0-27
  result = []
  inner_arr = arr.slice(1, arr.length-1)
  # binding.pry
  arr.each_with_index do |word, index| 
    # word[index]  = "m"
    # i_in_esperanto = esperanto_arr.index()
    inner_arr.each_with_index do |value, i|
      # value[i] = "b" 
      if word[index] != value[i]
        if esperanto_arr.index(word[index]) < esperanto_arr.index(value[i])
          result << word
          result << value 
        end 
      else 
        index += 1 
        i += 1
      end 
      binding.pry
    end 
  end 
end
# g_words = ["ĝuste", "ĝis revido"]
# sorted_g_words = ["ĝis revido", "ĝuste"]






