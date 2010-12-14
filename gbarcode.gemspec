AUTH = "Angel Pizarro"  # can also be an array of Authors
AUTH_EMAIL = "angel@delagoya.com"
DESC_SHORT = "A barcode library that wraps GNU Barcode using SWIG."
DESC_LONG = DESC_SHORT + " " + "Most popular encoding schemes are supported (Code 39, UPC, ISBN, etc.). See the README for a full listing." +
" For more Ruby-ish syntax, you should use the Rbarcode gem."

GEM_NAME = "gbarcode" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "gbarcode" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
GEM_VERSION = "1.00"
RDOC_OPTS = ["--exclude", "\.c$"]

Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = GEM_VERSION
  s.summary = DESC_SHORT
  s.description = DESC_LONG
  s.author = AUTH
  s.test_files = ['test/**/*']
  s.files = ['*.txt', 'doc/**/*.*', 'ext/**/*.c', 'ext/**/*.h', 'ext/**/*.rb']
  s.require_paths = [".","ext"]
  s.autorequire = "Gbarcode"
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ['*.txt']
  s.has_rdoc = true
  s.rdoc_options = RDOC_OPTS
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.2"
  s.rubyforge_project = RUBYFORGE_PROJECT
end
