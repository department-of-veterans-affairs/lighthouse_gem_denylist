# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'dependency_not_allowed'
  spec.version       = '0.1.0'
  spec.summary       = 'example gem with disallowed dependency'
  spec.description   = 'description'
  spec.authors       = ['Someone']
  spec.email         = ['someone@example.com']
  spec.homepage      = 'https://example.repo'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.add_runtime_dependency('rails_admin', '~> 3')
end
