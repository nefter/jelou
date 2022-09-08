require "net/http"
require "json"

class Jelou
    uri = URI('https://www.google.com.mx/')
    @status = Net::HTTP.get_response(uri)
    @complete_dom = Net::HTTP.get(uri)
    
    def self.complete_dom
        @status
        @complete_dom
    end
    
    def self.dom_extract
        @complete_dom[-400..-100].to_s
    end

    def self.picture
        uri = URI('https://api.nasa.gov/planetary/apod?api_key=wcK0pj1gZPZAU873fTaZUAhTbwzH5vTb03Dow8l9')
        json_string = Net::HTTP.get(uri)
        res = JSON.parse(json_string)
        "The picture of the day is \'#{res['title']}\' by #{res['copyright']} which you can see in this link #{res['url']}"
    end
end 