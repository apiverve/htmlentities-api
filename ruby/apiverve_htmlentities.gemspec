# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_htmlentities"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "HTML Entities Encoder/Decoder API - Ruby Client"
  spec.description   = "HTML Entities Encoder/Decoder converts special characters into safe HTML entities or restores encoded strings back to standard text. Pass any HTML markup or text snippet to receive the converted string, a replacement count, and a list of modified characters."
  spec.homepage      = "https://apiverve.com/marketplace/htmlentities?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/htmlentities-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/htmlentities"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
