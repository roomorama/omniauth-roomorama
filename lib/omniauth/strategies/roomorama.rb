require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Roomorama < OmniAuth::Strategies::OAuth2
      option :name, 'roomorama'

      option :client_options, { 
        :site => 'https://roomorama.com', 
        :authorize_url => "/oauth/authorize",
        :token_url => '/oauth/token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'roomorama', 'Roomorama'