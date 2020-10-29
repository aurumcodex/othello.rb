require_relative 'lib/othello/version'

Gem::Specification.new do |spec|
  spec.name          = "othello"
  spec.version       = Othello::VERSION
  spec.authors       = ["aurumcodex"]
  spec.email         = ["aurumcodex@protonmail.com"]

  spec.summary       = "An implementation of the game Othello, written in Ruby."
  spec.description   = "An implementation of the game Othello, written in Ruby."
  spec.homepage      = "https://github.com/aurumcodex/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_runtime_dependency "rainbow", "~> 3.0.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
