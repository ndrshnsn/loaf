# Change log

## [v0.10.2] - 2023-08-01

### Changed
* Removed rspec stuff and version checking
* Removed bin
* Added frame attr_reader to crumb.rb for use with turbo frames

## [v0.10.0] - 2020-11-21

### Changed
* Reduce gem dependencies to `railties` by Christian Sutter (@csutter)
* Use `URI::DEFAULT_PARSER` instead of deprecated `URI.parser` by (@dsazup)
* Support Rails 6.1 in tests

### Fixed
* Fix #breadcrumb_trail to allow overriding the match option
* Fix #breadcrumb_trail to return enumerator that includes passed in match option

## [v0.9.0] - 2020-01-19

### Changed
* Change gemspec to include metadata, license info and remove test artifacts
* Change to update testing to include Ruby 2.7
* Change to limit Ruby to 1.9.3 or greater

### Fixed
* Fix Ruby 2.7 warnings

## [v0.8.1] - 2019-02-04

### Added
* Add console binary

### Changed
* Remove rake & appraisal binaries
* Change setup binary to load correct env
* Change gemspec to load files directly in without using git

## [v0.8.0] - 2018-08-07

### Changed
* Change Translation to skip translating nil and empty string
* Change view extension to only lookup breadcrumb name translation
* Remove Configuration #crumb_length and #capitalize options
* Remove CrumbFormatter to skip truncating and formatting crumb names

## Fix
* Fix issue with breadcrumb names being modified

## [v0.7.0] - 2018-06-20

### Added
* Add test setup for Rails 5.2 by Brendon Muir(@brendon)

### Changed
* Change controller level #breadcrumb helper to accept Proc as name without controller parameter by Brendon Muir(@brendon)

## [v0.6.2] - 2018-03-30

### Added
* Add :match to Configuration by Johan Kim(@hiphapis)

## [v0.6.1] - 2018-03-26

### Added
* Add nil guard and clear error messages to Loaf::Crumb initialization by Dan Matthews(@dmvt)

### Fixed
* Fix Loaf::Crumb to stop modifying options hash by Marcel Müller(@TheNeikos)

## [v0.6.0] - 2017-10-19

### Added
* Add new :match option to allow customisation of breadcrumb matching behaviour
* Add #current_crumb? for checking if breadcrumb is current in view
* Add tests setup for Rails 5.0, 5.1

### Changed
* Change view helper name from #breadcrumbs to #breadcrumb_trail
* Change Configuration to accept attributes at initilization
* Change Loaf::Railtie to load for both old and new rails versions
* Remove Builder class
* Remove configuration options :root, :last_crumb_linked, :style_classes
* Remove #add_breadcrumbs from controller api

### Fixed
* Fix current page matching logic to allow for inclusive paths
* Fix controller filter to work with new Rails action semantics

## [v0.5.0] - 2015-01-31

### Added
* Add generator for locales file
* Add breadcrumbs scope for translations
* Add ability to pass proc as title and/or url for breadcrumb helper inside controller

### Changed
* Change breadcrumb formatter to use translations for title formatting

## [v0.4.0] - 2015-01-10

### Added
* Add ability to force current path through :force option

### Changed
* Change breadcrumbs view method to return enumerator without block
* Change Crumb to ruby class and add force option
* Change Configuration to ruby class and scope config options
* Change format_name to only take name argument
* Change to expose config settings on configuration
* Update test suite to work against different rubies 1.9.x, 2.x
* Test Rails 3.2.x, 4.0, 4.1, 4.2

### Fixed
* Fix bug with url parameter to allow for regular rails path variables

## [v0.3.0] - 2012-02-25

### Added
* Add loaf gem errors
* Add custom options validator for filtering invalid breadcrumbs params
* Add specs for isolated view testing.

### Changed
* Renamed main gem helpers for adding breadcrumbs from `add_breadcrumb` to
  `breadcrumb`, both inside controllers and views.

## [v0.2.1] - 2012-02-22

### Added
* Add more integration tests and fixed bug with adding breadcrumbs inside view
* Add specs for controller extensions

## [v0.2.0] - 2012-02-18

### Added
* Add integration tests for breadcrumbs view rendering
* Add translation module for breadcrumbs title lookup
* Add breadcrumb formatting module with tests

### Changed
* Change gemspec with new gem dependencies, use git
* Setup testing environment with dummy rails app
* Refactor names for controller and view extensions

## [v0.1.0] - 2011-10-22

* Initial implementation and release

[v0.10.0]: https://github.com/piotrmurach/loaf/compare/v0.9.0...v0.10.0
[v0.9.0]: https://github.com/piotrmurach/loaf/compare/v0.8.1...v0.9.0
[v0.8.1]: https://github.com/piotrmurach/loaf/compare/v0.8.0...v0.8.1
[v0.8.0]: https://github.com/piotrmurach/loaf/compare/v0.7.0...v0.8.0
[v0.7.0]: https://github.com/piotrmurach/loaf/compare/v0.6.2...v0.7.0
[v0.6.2]: https://github.com/piotrmurach/loaf/compare/v0.6.1...v0.6.2
[v0.6.1]: https://github.com/piotrmurach/loaf/compare/v0.6.0...v0.6.1
[v0.6.0]: https://github.com/piotrmurach/loaf/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/piotrmurach/loaf/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/piotrmurach/loaf/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/piotrmurach/loaf/compare/v0.2.1...v0.3.0
[v0.2.1]: https://github.com/piotrmurach/loaf/compare/v0.2.0...v0.2.1
[v0.2.0]: https://github.com/piotrmurach/loaf/compare/v0.1.0...v0.2.0
[v0.1.0]: https://github.com/piotrmurach/loaf/compare/v0.1.0...HEAD
