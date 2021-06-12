# UA-UTILS

Utilities to parse user-agent strings.

First implementation is mainly focusing on most common operating systems and device types, so that content can be optimized.

[![Ruby](https://github.com/HaraldWalker/ua-utils/actions/workflows/ruby.yml/badge.svg)](https://github.com/HaraldWalker/ua-utils/actions/workflows/ruby.yml)

## Usage

### Rails

In your Gemfile:

```ruby
gem 'ua-utils'
```

`bundle install` and restart your server to make the files available.


### Example

user_agent = UaUtils::UserAgent.new(user_agent_string)  
or  
os = UaUtils::OperatingSystem.new(user_agent_string)  

## Operating systems

Following operating systems can be detected:  
windows, windows phone, mac os x, iOS, android, bada, meego, symbian  

## Devices

Following device types can be detected:  
desktop, tablet, mobile, tv, bot  

## Documentation

http://rubydoc.info/github/HaraldWalker/ua-utils/frames/file/README.md

