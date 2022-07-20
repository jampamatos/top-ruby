fname = 'sample.txt'
somefile = File.open(fname, 'w')
somefile.puts 'hello file!'
somefile.close