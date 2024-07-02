# frozen_string_literal: true

require_relative "lib/random_data_generator/version"

Gem::Specification.new do |spec|
  spec.name = "random_data_generator"
  spec.version = RandomDataGenerator::VERSION
  spec.authors = ["Parth Sondigara"]
  spec.email = ["prs@taglineinfotech.com"]
  spec.summary = "A gem for generating random data for development and testing."
  spec.description = "This gem provides methods for generating random names, addresses, email addresses, and other common data types."
  spec.homepage = "https://github.com/parth-sondigara/random_data"
  spec.required_ruby_version = ">= 2.6.0"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/parth-sondigara/random_data"
  spec.metadata["changelog_uri"] = "https://github.com/parth-sondigara/random_data"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["lib/**/*", "README.md", "LICENSE.txt", "random_data_generator.gemspec"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faker"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
