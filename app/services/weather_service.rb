class WeatherService
  def conn
    Faraday.new("https://api.weather.gov") do |faraday|
      faraday.headers['Accept'] = 'application/geo+json'
    end
  end

  def get_local_entities(state_code)
    url = "/zones?area=#{state_code}"
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
