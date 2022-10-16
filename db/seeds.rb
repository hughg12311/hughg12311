# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
url = URI("https://www.stocklive.com.au/api/v1/auctions/past_sales")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request["API_KEY"] = "zqt6Lo!rMfxlbwO37oK8PFP1#n8K4cbF3Cfyv7!kPBw%s6MD2o"

response = https.request(request)
output= response.read_body
output = JSON.parse(output)

output.map do |sale|
    salename = sale["name"]
    location = sale["location"]
    nextlotid = sale["id"]
    starting = sale["starting_at"]
    date = sale["starting_at"]
    sale_link = sale["full_catalog_url"]
    new_sale = Upcomingsale.create(
        salename: salename,
        location: location,
        sale_id: nextlotid,
        date: date,
        sale_link: sale_link
    )
end
