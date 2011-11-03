require './clipboard.rb'

array = %w{
gaming
ps3
xbox360
nintendo
pc
joyblind
joycast
}

# Add some tags or hit enter to continue

puts "Extra tags separated by spaces:"
strin = ""
strin = gets.chomp!
main = strin.split(/ /)

array.shuffle!

main |= array[0..(11 - main.size)]
out = ""
out = main.join ', '

clipboard out
