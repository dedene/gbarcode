require 'rake/packagetask'



GEM_NAME = "gbarcode" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "gbarcode" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
GEM_VERSION = "1.04"
RDOC_OPTS = ["--exclude", "\.c$"]
PKG = "#{GEM_NAME}-#{GEM_VERSION}"
PKG_FILES = FileList['ext/barcode_wrap.c', 'ext/codabar.c', 'ext/code128.c', 'ext/code39.c', 'ext/code93.c', 'ext/ean.c', 'ext/i25.c', 'ext/library.c', 'ext/msi.c', 'ext/pcl.c', 'ext/plessey.c', 'ext/ps.c', 'ext/svg.c', 'ext/barcode.h', 'ext/extconf.rb']

SPEC = Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = GEM_VERSION
  s.summary = "A C extension that wraps the GNU Barcode project."
  s.description = s.summary + " For more Ruby-ish syntax, you should use the Rbarcode gem."
  s.author = "Angel Pizarro"
  s.email = "angel@delagoya.com"
  s.homepage = "http://gbarcode.rubyforge.org"
  s.files = PKG_FILES
  s.require_paths = [".","ext"]
  s.extensions = ["ext/extconf.rb"]
  s.has_rdoc = true
  s.rdoc_options = RDOC_OPTS
  #s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.2"
  s.rubyforge_project = RUBYFORGE_PROJECT
end