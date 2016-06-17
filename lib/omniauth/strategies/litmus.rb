require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Litmus < OmniAuth::Strategies::OAuth2
      option :name, "litmus"
      option :client_options, {
        site: ENV["LITMUS_OAUTH_HOST"] || "https://litmus.com"
      }
    end
  end
end
