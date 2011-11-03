require './clipboard'

def make_name
	out = ""
	
	out << %@<p><a href="http://itunes.apple.com/ca/podcast/joycast/id457971148" target="_blank">Itunes Link</a></p>\n\n@
	out << %@<p><a href="http://www.joyblind.com/content/podcasts/#{@num}-#{@title.gsub(/ /, "_")}.mp3" target="_blank">MP3 (Right click and Save as.)</a></p>\n\n@
	out << "\n"
	out << %@<div><a href="http://itunes.apple.com/ca/podcast/joycast/id457971148" target="_blank">Itunes Link</a></div>\n\b@
	out << %@<div><a href="http://www.joyblind.com/content/podcasts/#{@num}-#{@title.gsub(/ /, "_")}.mp3" target="_blank">MP3 (Right click and Save as.)</a></div>\n\n@

	
	clipboard out
end

def get_input
	@num = -1
	@title = ""
	
	puts "Enter the number of the podcast: "
	@num = gets.chomp
	
	@num = "0" + @num if @num.to_i / 10 == 0
	@num = "0" + @num if @num.to_i / 100 == 0
	
	puts "Enter the name of the podcast: "
	@title = gets.chomp
	
end

get_input
make_name