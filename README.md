# StreamConsumer

Multi-threaded HTTP stream consumer, with asynchronous spooling and multi-threaded production. Includes an SDK for producers and statistics, including an implemention of a Kafka topic producer and a MySQL statistics updater.

## Ruby Version

JRuby jruby-1.7.12 using ruby 2.0 compatibility mode. Install via rvm: https://rvm.io/

## Installation

Add this line to your application's Gemfile:
```
gem 'stream_consumer'
```

And then execute:
```
$ bundle install
```

Or install it directly via gem with:
```
$ gem install stream_consumer
```

## Simple Example

## Client Configuration Options

## Logging

The gem supports configurable logging to both STDOUT and a log file.

To configure gem logging to STDOUT, specify the following in your code:
```
StreamConsumer.logger.console = true
```

To configure gem logging to a log file named "test.log", specify the following in your code:
```
StreamConsumer.logger.logfile = "test.log"
```

To set the log level, specify the following in your code (e.g. to set the log level to :debug):
```
StreamConsumer.logger.level = Logger::DEBUG
```

To set a custom log tag for logging, specify the following in your code:
```
StreamConsumer.logger.tag = "your_custom_tag"
```

Or use your own logger instead:
```
StreamConsumer.logger = <your Logger::logger instance>
```

## Unit Test Coverage

Unit test suite implemented with rspec. Run via:
```
$ rake
```
or:
```
$ rspec
```
Individual test suites in the spec directory can be run via:
```
$ rspec spec/<spec filename>.spec
```
An HTML coverage report is generated at the end of a full test run in the coverage directory.</spec>

## Fixed Issues

* See [![CHANGELOG](CHANGELOG)](CHANGELOG)

## License

  Licensed under the Apache Software License 2.0. See [![LICENSE](LICENSE)](LICENSE) file.
