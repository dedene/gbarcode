GEM_VERSION = "1.03"


# desc "Run test code"
# Rake::TestTask.new(:test) do |t|
#   ["ext", "lib", "test"].each {|lib| t.libs << lib}
#   t.pattern = 'test/**/*_test.rb'
#   t.verbose = true
# end

# desc "Create documentation"
# Rake::RDocTask.new(:docs) do |rd|
#   rd.main = "README.txt"
#   rd.rdoc_files.include("./*.txt")
#   rd.options =  RDOC_OPTS
# end

desc "Makes the Makefile"
task :extconf do 
  system 'cd ext/; ruby extconf.rb'
end

desc "Compiles extensions"
task :compile => [:extconf] do 
  system 'cd ext/; make'
end



desc 'Generate a gem file'
task :package do
  puts "Building version: #{GEM_VERSION}"
  sh "gem build gbarcode.gemspec"
end


# add compiled files to clean list
#CLOBBER << FileList["ext/**/*.o", "ext/Makefile"]
