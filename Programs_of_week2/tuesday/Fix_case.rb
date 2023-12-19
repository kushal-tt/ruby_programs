# In this solution, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:
# if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
# For example:

# solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.

def solve s
     upcase_count = s.count("A-Z")
     downcase_count = s.count("a-z")

     upcase_count > downcase_count ? s.upcase : s.downcase
end

p solve("THis is FUN")