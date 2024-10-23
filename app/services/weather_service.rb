class WeatherService
  def conn
    Faraday.new("https://api.weather.gov") do |faraday|
      faraday.headers['Accept'] = 'application/geo+json'
      faraday.headers['User-Agent'] = 'YourAppName' # Set your app's name
    end
  end

  def get_local_entities(state_code)
    url = "/zones?area=#{state_code}" # Adjust the endpoint according to the API documentation
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
