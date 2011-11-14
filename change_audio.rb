# encoding: UTF-8


# Open old_index and find which files are podcast files.
old_index = open('old_index.html').read

str = open('out.txt').read

sub = "\n\n<audio src=\"/content/podcasts/\\1.mp3\" controls=\"controls\"></audio>\n\n"
new_reg = /\s*<\s*div\s*>\s*<\s*a\s*href="http:\/\/www.joyblind.com\/content\/podcasts\/(.*).mp3.*/
old_reg = //
search_reg = //

str.gsub!(reg, sub)

puts str

open('out.txt', 'w').write str
