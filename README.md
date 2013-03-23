# UA-UTILS

Utilities to parse user-agent strings.

First implementation is mainly focusing on most common operating systems and device types, so that content can be optimized.

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

