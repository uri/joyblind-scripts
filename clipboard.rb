def clipboard str

  os = RUBY_PLATFORM.downcase

  clipstr = "pbcopy"
  
  clipstr = "CLIP" if os.start_with?('mswin') || os[/mingw32/] != nil

  IO.popen(clipstr, 'r+') { |clipboard| clipboard.print str }
end
