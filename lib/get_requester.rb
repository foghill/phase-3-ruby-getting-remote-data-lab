# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'


class GetRequester
    attr_accessor :url
    def initialize(url)
        @url = url
    end

    url = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    def parse_json
        programs = JSON.parse(self.get_response_body)
        programs.collect do |program|
            program
        end
    end
end

get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
get_requester.parse_json