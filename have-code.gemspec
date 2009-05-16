# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{have-code}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bryce Kerley"]
  s.date = %q{2009-05-16}
  s.email = %q{bkerley@brycekerley.net}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/have-code.rb",
    "lib/have-code/ar_code.rb",
    "lib/have-code/dm_code.rb",
    "test/active_record_helper.rb",
    "test/data_mapper_helper.rb",
    "test/have_code_test.rb",
    "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bkerley/have-code}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{have-code}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "test/active_record_helper.rb",
    "test/data_mapper_helper.rb",
    "test/have_code_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bkerley-affine>, [">= 0"])
    else
      s.add_dependency(%q<bkerley-affine>, [">= 0"])
    end
  else
    s.add_dependency(%q<bkerley-affine>, [">= 0"])
  end
end
