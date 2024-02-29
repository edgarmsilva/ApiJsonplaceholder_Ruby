email = "Patience_Bahringer@dameon.biz"
# email = "sample@valid.com"

# Email pattern
EMAIL_REGEX = '^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$'

# This is a valid email
if email.match(EMAIL_REGEX)
  puts "This is a valid email!"
else
  puts "This is not a valid email!"
end
