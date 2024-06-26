# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'with_denied_dependency'
  spec.version       = '0.1.0'
  spec.summary       = 'example gem with denied runtime dependency'
  spec.description   = 'description'
  spec.authors       = ['Someone']
  spec.email         = ['someone@example.com']
  spec.homepage      = 'https://example.repo'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.add_runtime_dependency('rails_admin', '~> 3') # Will be denied
end
