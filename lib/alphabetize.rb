require "pry"

# ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

def alphabetize(arr)
  esperanto_arr = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".chars
  arr.sort_by { |word| 
    word.split("").each do |letter|
      esperanto_arr.index(letter)
    end 
  }
end
# g_words = ["ĝuste", "ĝis revido"]
# sorted_g_words = ["ĝis revido", "ĝuste"]






