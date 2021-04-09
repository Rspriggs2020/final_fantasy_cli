#application programming interface
class API

    URL = 'https://www.moogleapi.com/api/v1/characters'

    def self.get_data
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        #binding.pry
        character_array = JSON.parse(response.body)
        #binding.pry
        character_array.each do |c|
            #binding.pry
            Character.new(c)
        end
    #character = RestClient.get("https://www.moogleapi.com/api/v1/characters")
    binding.pry   
    end
    
end