Gem::Specification.new do |gem|
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.description   = %q{A joke gem.}
  gem.summary       = gem.description.dup
  gem.homepage      = 'https://github.com/kachick/aprilfool'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'aprilfool'
  gem.require_paths = ['lib']
  gem.version       = '0.0.1.1'

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'yard', '>= 0.8.5.2', '< 2'
  gem.add_development_dependency 'rspec', '>= 2.13', '< 3'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 1.3.0', '< 2'
end