# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "science"
  s.version = "0.0.1a"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Scott Lewis"]
  s.date = "2013-02-25"
  s.description = "Knowledge."
  s.email = "ryan@rynet.us"
  s.files = [".gitignore", ".rvmrc", "Gemfile", "Gemfile.lock", "Guardfile", "LICENSE", "README.md", "Rakefile", "VERSION", "lib/science.rb", "science.gemspec", "spec/science_spec.rb", "spec/spec_helper.rb"]
  s.homepage = "http://github.com/RyanScottLewis/science"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Science, as homosapiens understand it, written in Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<version>, ["~> 1.0"])
      s.add_runtime_dependency(%q<savon>, ["~> 2.1.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_development_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<redcarpet>, ["~> 2.2"])
      s.add_development_dependency(%q<github-markup>, ["~> 0.7"])
    else
      s.add_dependency(%q<version>, ["~> 1.0"])
      s.add_dependency(%q<savon>, ["~> 2.1.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
      s.add_dependency(%q<guard-yard>, ["~> 2.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<redcarpet>, ["~> 2.2"])
      s.add_dependency(%q<github-markup>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<version>, ["~> 1.0"])
    s.add_dependency(%q<savon>, ["~> 2.1.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 2.1"])
    s.add_dependency(%q<guard-yard>, ["~> 2.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<redcarpet>, ["~> 2.2"])
    s.add_dependency(%q<github-markup>, ["~> 0.7"])
  end
end
