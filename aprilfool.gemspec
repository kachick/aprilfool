Gem::Specification.new do |gem|
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.description   = %q{A joke gem.}
  gem.summary       = gem.description.dup
  gem.homepage      = 'https://github.com/kachick/aprilfool'

  gem.files         = `git ls-files`.split($\)
  gem.name          = 'aprilfool'
  gem.require_paths = ['lib']
  gem.version       = '0.0.2'

  gem.required_ruby_version = '>= 2.6.0'
end