require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class SomeSite < OmniAuth::Strategies::OAuth2
      option :name, "litmus"
      option :client_options, {
        site: ENV["LITMUS_OAUTH_PROVIDER"] || "https://litmus.com"
      }
    end
  end
end
