Gem::Specification.new do |s|
  s.name        = 'liquid-icu-filter'
  s.version     = '0.1.0'
  s.summary     = 'Liquid filter to render ICU message format'
  s.author      = ['Cloudaper', 'Martin Suja', 'Kryštof Korb']
  s.email       = ['hello@cloudaper.com', 'martin.suja17@gmail.com', 'krystof@korb.cz']
  s.license     = 'MIT'
  s.homepage    = 'https://github.com/cloudaper/liquid-icu-filter'

  s.files       = ['lib/liquid-icu-filter.rb']

  s.add_runtime_dependency 'liquid', '~> 4.0'
  s.add_runtime_dependency "message_format", "~> 0.0.5"
end
