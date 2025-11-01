# frozen_string_literal: true

require_relative "lib/bannergrab/version"
# frozen_string_literal: true


Gem::Specification.new do |spec|
  spec.name = 'BannerGrab'
  spec.version = Bannergrab::VERSION
  spec.authors = ['mike']
  spec.email = ['noway@lol.com']

  spec.summary = 'Grab a banner from a service.  '
  spec.description = 'Grab a banner from a service a couple different ways.'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  File.basename(__FILE__)
  spec.files = Dir.glob('lib/**/*', File::FNM_DOTMATCH)
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
