def encode(password)
  pass_as_string = password.to_s
  password_array = pass_as_string.split("_")
  new_password_array = []
  new_password_array[0] = password_array.last
  new_password_array[3] = password_array.first
  new_password_array[1] = password_array[1]
  new_password_array.compact!
  joined_password = new_password_array.join(" ")
  joined_password.gsub!("e", "blake")
  joined_password.gsub!(" ", "ashley")
  joined_password
end

# This one uses intuition to change password_array[3] to password_array[2]
# def decode(joined_password)
#   joined_password.gsub!("ashley", " ")
#   joined_password.gsub!("blake", "e")
#   new_password_array = joined_password.split(" ")
#   password_array = []
#   password_array[1] = new_password_array[1]
#   password_array[0] = new_password_array.last
#   password_array[2] = new_password_array.first
#   password = password_array.join("_")
#   password = password.to_sym
# end


# And this one actually just reverses the first one
def decode(joined_password)
  joined_password.gsub!("ashley", " ")
  joined_password.gsub!("blake", "e")
  new_password_array = joined_password.split(" ")
  password_array = []
  password_array[1] = new_password_array[1]
  password_array[0] = new_password_array.last
  password_array[3] = new_password_array.first
  password = password_array.compact.join("_")
  password = password.to_sym
end


puts decode("intblakernblaketsashleythblakeashleyall")