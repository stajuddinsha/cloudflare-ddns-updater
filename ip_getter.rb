require "uri"
require "net/http"
require "json"

arr = []


525600.times do |i|
    url = URI("http://jsonip.com")

    http = Net::HTTP.new(url.host, url.port);
    request = Net::HTTP::Get.new(url)

    response = http.request(request)
    resp =  JSON.parse(response.read_body)
    puts "ID: #{i} IP => #{resp["ip"]}"
end