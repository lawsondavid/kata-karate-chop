Gem::Specification.new do |s|
  s.name               = "karate_chop"
  s.version            = "0.0.1"
  s.default_executable = "karate_chop"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Lawson"]
  s.date = %q{2014-09-02}
  s.description = %q{A simple kata gem}
  s.email = %q{lawsondavid@gmail.com}
  s.files = ["Rakefile", "lib/karate_chop.rb"]
  s.test_files = ["test/test_karate_chop.rb"]
  s.homepage = %q{https://github.com/lawsondavid/kata-karate-chop}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.0.14}
  s.summary = %q{Karate Chop!}
  s.license = 'MIT'
end