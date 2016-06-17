require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Litmus < OmniAuth::Strategies::OAuth2
      option :name, "litmus"
      option :client_options, {
        site: ENV["LITMUS_OAUTH_HOST"] || "https://litmus.com"
      }

      uid { raw_info["id"].to_s }
      info do
        {
          "name"       => raw_info["full_name"],
          "first_name" => raw_info["first_name"],
          "last_name"  => raw_info["last_name"]
        }
      end

      def raw_info
        access_token.options[:mode] = :query
        @raw_info ||= access_token.
                        get("https://api.litmus.com/v2/users/current").
                        parsed["user"]
      end
    end
  end
end
