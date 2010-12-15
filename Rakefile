GEM_NAME = "gbarcode" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "gbarcode" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
GEM_VERSION = "1.02"
RDOC_OPTS = ["--exclude", "\.c$"]
PKG = "#{GEM_NAME}-#{GEM_VERSION}"
PKG_FILES = FileList['*.txt', 'doc/**/*.*', 'ext/**/*.c', 'ext/**/*.h', 'ext/**/*.rb']


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
