lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "poetry_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "poetry_view_tool"
  spec.version       = PoetryViewTool::VERSION
  spec.authors       = ["Moritz Ben Konschack"]
  spec.email         = ["moritzkonschack@gmail.com"]

  spec.summary       = %q{my first custom gem called poetry_view_tool.}
  spec.description   = %q{functionality to display a copyright banner.}
  spec.homepage      = "https://github.com/causebencancode/peotry_view_tool"

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/causebencancode/peotry_view_tool"
  spec.metadata["changelog_uri"] = "https://github.com/causebencancode/peotry_view_tool"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
