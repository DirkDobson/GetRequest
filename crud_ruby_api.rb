require 'httparty'
require 'pry'
require 'json'
require 'pp'

# response = HTTParty.get("http://json-server.devpointlabs.com/api/v1")
# puts response


response = HTTParty::get('http://json-server.devpointlabs.com/api/v1/users')

puts response.parsed_response

# delete = HTTParty::delete(http://json-server.devpointlabs.com/api/v1, options = {}, &block)

# puts delete

# Or wrap things up in your own class
# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: { site: service, page: page } }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end

# stack_exchange = StackExchange.new("stackoverflow", 1)
# puts stack_exchange.questions
# puts stack_exchange.users