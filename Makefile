## Misc
list: # List all available targets for this Makefile
	@grep '^[^#[:space:]].*:' Makefile

setup: # Install development dependencies
	bundle install

console: setup # Spin up a console with all dependencies loaded
	bin/console

docs: # Generate documentation and start a server to view it
	bundle exec yardoc
	yard server --reload

test: # Run all tests
	bundle exec rspec
