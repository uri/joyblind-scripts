# encoding: UTF-8

str = open('out.txt').read

sub = "\n\n<audio src=\"/content/podcasts/\\1.mp3\" controls=\"controls\"></audio>\n\n"
reg = /\s*<\s*div\s*>\s*<\s*a\s*href="http:\/\/www.joyblind.com\/content\/podcasts\/(.*).mp3.*/

str.gsub!(reg, sub)

puts str

open('out.txt', 'w').write str
