# frozen_string_literal: true

require 'yaml'

Gem.pre_install do
  denylist = YAML.load_file(File.join(__dir__, '../gem_denylist.yml'))
  install_dir = File.dirname(Bundler.default_gemfile)

  if File.exist?(allowlist_path = File.join(install_dir, 'gem_allowlist.yml'))
    allowlist = YAML.load_file(allowlist_path)
    unless allowlist.is_a? Array
      raise Gem::Exception, 'gem_allowlist.yml should contain only an array of gem names to allow'
    end

    denylist -= allowlist
  end

  all_gems = Bundler.definition.specs.map(&:name)
  bad_gems = all_gems & denylist

  unless bad_gems.empty?
    bad_gems_str = "gem#{bad_gems.count > 1 ? 's' : ''} '#{bad_gems.join("', '")}'"
    raise Gem::Exception,
          "The Lighthouse Delivery Platform does not allow installation of #{bad_gems_str}"
  end
end
