# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "rpush/version"

Gem::Specification.new do |s|
  s.name        = "rpush"
  s.version     = Rpush::VERSION
  s.authors     = ["Ian Leitch"]
  s.email       = ["port001@gmail.com"]
  s.homepage    = "https://github.com/rpush/rpush"
  s.summary     = 'The push notification service for Ruby.'
  s.description = 'The push notification service for Ruby.'
  s.license     = 'MIT'
  s.metadata    = {
    "bug_tracker_uri" => "https://github.com/rpush/rpush/issues",
    "changelog_uri" => "https://github.com/rpush/rpush/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/rpush/rpush",
    "rubygems_mfa_required" => "true"
  }

  s.files         = `git ls-files -- lib README.md CHANGELOG.md LICENSE`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}`.split("\n")
  s.executables   = `git ls-files -- bin`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 3.0.0'

  s.post_install_message = <<~POST_INSTALL_MESSAGE
    When upgrading Rpush, don't forget to run `bundle exec rpush init` to get all the latest migrations.

    For details on this specific release, refer to the CHANGELOG.md file.
    https://github.com/rpush/rpush/blob/master/CHANGELOG.md
  POST_INSTALL_MESSAGE

  s.add_runtime_dependency 'multi_json', '~> 1.0'
  s.add_runtime_dependency 'net-http-persistent'
  s.add_runtime_dependency 'net-http2', '~> 0.18', '>= 0.18.3'
  s.add_runtime_dependency 'jwt', '>= 1.5.6'
  s.add_runtime_dependency 'activesupport', '>= 6.0', '!= 7.1.4', '!= 7.2.0', '!= 7.2.1' # https://github.com/rails/rails/issues/52820
  s.add_runtime_dependency 'logger'
  s.add_runtime_dependency 'thor', ['>= 0.18.1', '< 2.0']
  s.add_runtime_dependency 'railties'
  s.add_runtime_dependency 'rainbow'
  s.add_runtime_dependency 'web-push'
  s.add_runtime_dependency 'googleauth'
  s.add_runtime_dependency 'ostruct'

  s.add_development_dependency 'debug'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'stackprof'
  s.add_development_dependency 'modis', '>= 2.0'
  s.add_development_dependency 'rpush-redis', '~> 1.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'codeclimate-test-reporter', '1.0.7'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rubocop', '~> 1.66'
  s.add_development_dependency 'rubocop-performance'
  s.add_development_dependency 'rubocop-rake'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'byebug'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'sqlite3', '~> 1.4'
end
