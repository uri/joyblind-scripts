require './clipboard.rb'
str = ""

begin
  str = File.new(Dir["*.m4a"][0]).size
rescue
  str = File.new(Dir["*.mp3"][0]).size
ensure
  clipboard str 
end




