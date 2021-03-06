class API

    URL = 'https://www.moogleapi.com/api/v1/characters'

    def self.get_data
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        character_array = JSON.parse(response.body)
        character_array.each do |character|
            Character.new(character)
        end
    end
end