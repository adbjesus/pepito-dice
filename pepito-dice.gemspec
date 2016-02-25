# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
puts lib
puts $LOAD_PATH
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'pepito-dice'
  s.version     = '0.0.1'
  s.authors     = ['Olivier']
  s.email       = ['olivier@yafoy.com']
  s.summary     = 'Pepito-dice is your dice simulator for the Pepito bot'
  s.description = 'Dice simulator for Pepito'
  s.homepage    = 'https://github.com/yafoy/pepito-dice'
  s.license     = 'MIT'

  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.0.0'

  s.add_runtime_dependency 'pepito', '~> 0'

  s.add_development_dependency 'rake', '~> 10.5'
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'rubocop', '~> 0.37'
end
