SPEC = Gem::Specification.new do |s|
  s.name = "gbarcode"
  s.version = "1.06"
  s.summary = "A C extension that wraps the GNU Barcode project."
  s.description = s.summary + " For more Ruby-ish syntax, you should use the Rbarcode gem."
  s.author = "Angel Pizarro"
  s.email = "angel@delagoya.com"
  s.homepage = "http://gbarcode.rubyforge.org"
  s.files = ['ext/barcode_wrap.c', 'ext/codabar.c', 'ext/code128.c', 'ext/code39.c', 'ext/code93.c', 'ext/ean.c', 'ext/i25.c', 'ext/library.c', 'ext/msi.c', 'ext/pcl.c', 'ext/plessey.c', 'ext/ps.c', 'ext/svg.c', 'ext/barcode.h', 'ext/extconf.rb']
  s.require_paths = [".","ext"]
  s.extensions = ["ext/extconf.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--exclude", "\.c$"]
  #s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.2"
  s.rubyforge_project = "gbarcode"
end