# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{itunes-search}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jeff durand"]
  s.date = %q{2013-01-08}
  s.description = %q{Pretty simple interface for the itunes search api will return results as array of results objects and offer reasonable accessor methods variables}
  s.email = %q{jeff.durand@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "itunes-search.gemspec",
     "lib/itunes-search.rb",
     "lib/itunes-search/base.rb",
     "lib/itunes-search/search.rb",
     "test/helper.rb",
     "test/test_itunes-search.rb"
  ]
  s.homepage = %q{http://github.com/johnnyiller/itunes-search}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Itunes Search}
  s.test_files = [
    "test/helper.rb",
     "test/test_itunes-search.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

