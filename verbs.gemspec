# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'verbs/version'

Gem::Specification.new do |s|
  s.name = 'lokap-verbs'
  s.version = Verbs::VERSION
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.4.0'
  s.authors = ['Andy Rossmeissl']
  s.description = "This patched version removes `.verb` monkey-patches on `String` and `Symbol`; I am not the maintainer, use at your own risk."
  s.summary = 'English verb conjugation in Ruby'
  s.email = 'andy@rossmeissl.net'
  s.homepage = 'http://github.com/adambair/lokap-verbs'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'test-unit'
  s.add_dependency 'activesupport', '>= 2.3.4'
  s.add_dependency 'i18n'
end
