require 'open-uri'

open("joycast.xml", 'w').write open("http://people.scs.carleton.ca/~ugorelik/content/podcasts/joycast.xml").read