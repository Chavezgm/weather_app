class WeatherController < ApplicationController
  def index
    @state_codes = [
      ["Alabama", "AL"], ["Alaska", "AK"], ["American Samoa", "AS"],
      ["Arizona", "AZ"], ["Arkansas", "AR"], ["California", "CA"],
      ["Colorado", "CO"], ["Connecticut", "CT"], ["Delaware", "DE"],
      ["District of Columbia", "DC"], ["Florida", "FL"], ["Georgia", "GA"],
      ["Guam", "GU"], ["Hawaii", "HI"], ["Idaho", "ID"], ["Illinois", "IL"],
      ["Indiana", "IN"], ["Iowa", "IA"], ["Kansas", "KS"], ["Kentucky", "KY"],
      ["Louisiana", "LA"], ["Maine", "ME"], ["Maryland", "MD"], ["Massachusetts", "MA"],
      ["Michigan", "MI"], ["Minnesota", "MN"], ["Mississippi", "MS"], ["Missouri", "MO"],
      ["Montana", "MT"], ["Nebraska", "NE"], ["Nevada", "NV"], ["New Hampshire", "NH"],
      ["New Jersey", "NJ"], ["New Mexico", "NM"], ["New York", "NY"],
      ["North Carolina", "NC"], ["North Dakota", "ND"], ["Ohio", "OH"],
      ["Oklahoma", "OK"], ["Oregon", "OR"], ["Pennsylvania", "PA"],
      ["Puerto Rico", "PR"], ["Rhode Island", "RI"], ["South Carolina", "SC"],
      ["South Dakota", "SD"], ["Tennessee", "TN"], ["Texas", "TX"],
      ["Utah", "UT"], ["Vermont", "VT"], ["Virgin Islands", "VI"],
      ["Virginia", "VA"], ["Washington", "WA"], ["West Virginia", "WV"],
      ["Wisconsin", "WI"], ["Wyoming", "WY"], ["Northern Mariana Islands", "MP"],
      ["Palau", "PW"], ["Federated States of Micronesia", "FM"], ["Marshall Islands", "MH"]
    ]
  end

  def local_entities
    if params[:state_code]
      @local_entities = WeatherFacade.new(params[:state_code]).local_entities
    else
      redirect_to root_path, alert: "Please select a state."
    end
  end
end
