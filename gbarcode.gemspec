Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = GEM_VERSION
  s.summary = DESC_SHORT
  s.description = DESC_LONG
  s.authors = [AUTH, "Jonathan Phillips"]
  #s.files = ['*.txt', 'doc/**/*.*', 'ext/**/*.c', 'ext/**/*.h', 'ext/**/*.rb']
  s.require_paths = [".","ext"]
  s.autorequire = "Gbarcode"
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["LICENSE", "README"]
  s.required_ruby_version = ">= 1.9.2"
  s.rubyforge_project = RUBYFORGE_PROJECT
  s.homepage = ""
  
end
