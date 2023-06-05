# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
### Changed
### Fixed
### Removed

## [2.0.5] 2023-06-05
### Added
- Dependencies
  - yard-junk
  - redcarpet
  - pry, IRB alternative
  - pry-suite
  - debase,  for IDE debugging
- Some rules should ignore specs/tests
  - Style/MethodCallWithArgsParentheses
  - Style/ClassAndModuleChildren
### Fixed
- `yard` documentation task
### Changed
- Added Include to inherit_mode: merge
- Updated dependency on standard-rubocop-lts

## [2.0.4] 2023-05-22
### Fixed
- install_tasks and Railtie loading of rake tasks
### Changed
- tasks.rake => tasks.rb

## [2.0.3] 2023-05-21
### Fixed
- Ship rake tasks in gem package

## [2.0.2] 2023-05-19
### Added
- Configs added for:
  - standard-performance
  - standard-custom
  - standard-rubocop-lts
- And optionally, if you are building a Rails app:
  - betterlint
  - standard-rails
- version_gem
### Fixed
- Fix rake_tasks hook on Railtie

## [2.0.0] 2023-05-09 [YANKED]
### Changed
- New/Better configs for:
  - rubocop
  - rubocop-gradual
  - rubocop-md
  - rubocop-performance
  - rubocop-rake
  - rubocop-shopify
  - rubocop-thread_safety
  - standard
- And optionally, if you are using RSpec:
  - rubocop-rspec
- And optionally, if you are using building a RubyGem:
  - rubocop-packaging

## [1.1.2] 2023-03-17
### Added
* GitLab CI config
### Changed
* Upgraded to RuboCop v1.48.1
  * Compatible with rubocop-packaging ~> 0.5.2
* Improved development documentation
* Improved documentation on SemVer adherence
### Fixed
* Stop defining global variable in version.rb

## [1.1.1] 2022-12-20
### Fixed
* Do not require version.rb from gemspec so code coverage is accurate from both `rake` and `rspec`
* Typos in CHANGELOG & Documentation
### Changed
* Minimum Code Coverage == 100%

## [1.1.0] 2022-12-18
### Changed
* Update to rubocop `~> 1.40.0`
### Added
* Gem release ships with `SHA512` and `SHA256` checksums
* Release is securely signed by author
* Document release process in `CONTRIBUTING.md`
* Documentation of why this gem exists

## [1.0.6] 2022-06-08
### Changed
* Update to rubocop `~> 1.30.1`
* Removed test_files from gemspec
* Add binstubs for bundle, rake, rspec, and rubocop

## [1.0.5] 2022-06-05
### Changed
* Update to rubocop `~> 1.30.0`

## [1.0.4] 2022-05-23
### Changed
* Update to rubocop `~> 1.29.1`

## [1.0.3] 2022-05-23
### Added
* Rubocop => RuboCop typo repair
* Ruby Version Support Matrix
* Improved documentation

## [1.0.2] 2022-05-03
### Fixed
* Added missing rubocop.yml for inherit_gem directive

## [1.0.1] 2022-05-02
### Added
* Documentation

## [1.0.0] 2022-05-01
### Added
* Initial release

[Unreleased]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v2.0.5...HEAD
[2.0.5]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v2.0.4...v2.0.5
[2.0.4]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v2.0.3...v2.0.4
[2.0.3]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v2.0.2...v2.0.3
[2.0.2]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v2.0.0...v2.0.2
[2.0.0]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.1.2...v2.0.0
[1.1.2]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.1.1...v1.1.2
[1.1.1]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.6...v1.1.0
[1.0.6]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.5...v1.0.6
[1.0.5]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.4...v1.0.5
[1.0.4]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.3...v1.0.4
[1.0.3]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.2...v1.0.3
[1.0.2]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/rubocop-lts/rubocop-ruby3_0/compare/251b24f1147b3a42a16465663be1f08c93e8affc...v1.0.0
