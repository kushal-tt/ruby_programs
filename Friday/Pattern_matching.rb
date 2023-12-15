#Patternn matching using regex

#extract email from  string 

def email_matching(text)
    email_pattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z]{2,}\b/i
    matches = text.scan(email_pattern)

   puts "Email Addresses: #{matches}"
end

sentance1 = "Contact us at support@example.com or info@company.com for assistance."
email_matching(sentance1)


#extract phone number 

def extract_phone_number(text)
    phone_pattern = /\b\d{3}-\d{3}-\d{4}\b/
    matches = text.scan(phone_pattern)

    puts "Phone Numbers: #{matches}"
end

sentance2 = "Contact us at 123-456-7890 or 555-555-5555 for support."
extract_phone_number(sentance2)

# validate date
def date_format(date)
    date_pattern = /\A\d{4}-\d{2}-\d{2}\z/
    if date =~ date_pattern
        puts "Valid date format."
    else
        puts "Invalid date format."
    end
end

date = "2023-15-15"
date1 = "12-15-2023"
date_format(date)
date_format(date1)


# Extracting Hashtags from a Social Media Post:

def extract_hastag(post)
    hashtag_pattern = /#\w+/
    matches = post.scan(hashtag_pattern)
    
    puts "Hashtags: #{matches}" 
end
post = "Excited for the #weekend! #FridayFeeling #jolly"

extract_hastag(post)



#Matching and Extracting IP Addresses
def matching_Ip(text)
    ip_pattern = /\b(?:\d{1,3}\.){3}\d{1,3}\b/
    matches = text.scan(ip_pattern)

    puts "IP Addresses: #{matches}"
end

sentance3 = "Server's IP addresses are 192.168.1.1 and 10.0.0.1."
matching_Ip(sentance3)


# Mask credit card number
def mask_credit_card(card_number)
    masked_number = card_number.gsub(/.(?=.{4})/, '*')
  
    puts "Original Credit Card Number: #{card_number}"
    puts "Masked Credit Card Number: #{masked_number}"
end
  
credit_card_number = "1234-5678-9012-3456"
mask_credit_card(credit_card_number)



# Matching Words with Repeated Letters:
  
def repeated_letter(text)
    repeated_letter_pattern = /\b\w*([a-zA-Z])\1+\w*\b/
    matches = text.scan(repeated_letter_pattern)
    puts "Words with Repeated Letters: #{matches.flatten}"
end
sentance4 = "Mississippi river is a beautiful destination."
 repeated_letter(sentance4)
  

# Random password generator
def generate_random_password(length)
    characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
    password = Array.new(length) {  characters.sample }.join
     "Generated Password: #{password}"
end
  
#  "Enter the length of the password"
 puts  generate_random_password(7)