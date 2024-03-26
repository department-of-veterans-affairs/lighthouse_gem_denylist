# frozen_string_literal: true

require 'yaml'

def get_all_dependencies(gemspec)
  [gemspec.name] + gemspec.runtime_dependencies.map do |subdep|
    [subdep.name] + get_all_dependencies(get_gemspec(subdep.name, subdep.requirement))
  end.flatten.uniq
end

Gem.pre_install do
  denylist = YAML.load_file(File.join(__dir__, '../gem_denylist.yml'))
  all_deps = Bundler.definition.specs.map(&:name)
  bad_gems = all_deps & denylist

  unless bad_gems.empty?
    raise Gem::Exception,
          "Lighthouse does not allow installation of gem#{bad_gems.count > 1 ? 's' : ''} '#{bad_gems.join("', '")}'"
  end
end
