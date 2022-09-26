class CalculatorController < ApplicationController
    def calcview
        render :calc
    end
    def ckgclerk
        url = URI("https://app.singular.live/apiv1/control/2x6ODGAGfLWFfmk7u3ZP31/api")

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Put.new(url)
        request["Content-Type"] = "application/json"
        request["Cookie"] = "session_id=s%3Al4Rl8b1rMeRtPqsgdq3yQcKpsfYhfMpJ.XW7uxUYYBwhsjXkw%2FKLWQ5Mp%2F9Mto%2FJGZfKhZs3E9No"
        request.body = JSON.dump({
        "command": "GetData"
        })

        response = https.request(request)

        raw_json = response.read_body
        raw_json = JSON.parse(raw_json)

        raw_json = raw_json["payload"]
        raw_json = JSON.parse(raw_json)
        #@testy = raw_json
        #puts raw_json["Lot Name"]
        @testy = []
        raw_json.map do |data|
            if not data["Lot Name"].empty?
                @testy << data["Lot Name"]
            end
        end
        render :ckgclerk
        
    end
end
