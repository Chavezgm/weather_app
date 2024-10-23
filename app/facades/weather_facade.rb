class WeatherFacade
  def initialize(state_code)
    @state_code = state_code
  end

  def local_entities
    response = WeatherService.new.get_local_entities(@state_code)
    parse_response(response)
  end

  private

  def parse_response(response)
    return [] unless response[:features] # Ensure the response contains features

    response[:features].map do |feature|
      # require 'pry'; binding.pry
      {
        name: feature[:properties][:name],
        state: feature[:properties][:state],
        forecast_office: feature[:properties][:forecastOffice],
        time_zone: feature[:properties][:timeZone]
      }
    end
  end
end
