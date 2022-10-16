require "uri"
require "net/http"
require "json"

url = URI("https://www.stocklive.com.au/api/v1/auctions/upcoming_sales")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["API_KEY"] = "zqt6Lo!rMfxlbwO37oK8PFP1#n8K4cbF3Cfyv7!kPBw%s6MD2o"

response = https.request(request)
output= response.read_body
output = JSON.parse(output)
@sales = []
output.map do |sale|
    @sales << sale["name"]
end
puts @sales