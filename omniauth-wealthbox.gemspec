lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-wealthbox/version'

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-wealthbox'
  gem.version       = Omniauth::Wealthbox::VERSION
  gem.authors       = ['Italo Matos']
  gem.email         = ['imatos@strety.com']
  gem.description   = 'OmniAuth strategy for wealthbox.'
  gem.summary       = 'OmniAuth strategy for wealthbox. Based on the OmniAuth strategy for GitHub.'
  gem.homepage      = 'https://github.com/Strety/omniauth-wealthbox'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'omniauth', '~> 2.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.7'
end
