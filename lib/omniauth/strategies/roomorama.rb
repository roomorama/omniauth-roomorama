require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Roomorama < OmniAuth::Strategies::OAuth2
      option :name, 'roomorama'

      option :client_options, { 
        :site => 'https://api.roomorama.com', 
        :authorize_url => "https://roomorama.com/oauth/authorize",
        :token_url => "https://roomorama.com/oauth/token"
      }
      
      uid { raw_info['id'] }
      
      info do
        {
          :name => raw_info['login'],
          :email => raw_info['email'],
          :nickname => raw_info['login'],
          :first_name => raw_info['first_name'],
          :last_name => raw_info['last_name'],
          :location => [raw_info['city'], raw_info['country']].delete_if(&:blank?).join(', '),
          :description => raw_info['description'],
          :phone => raw_info['phone_number'],
        }
      end
      
      extra do
        {
          :raw_info => raw_info
        }
      end
      
      def raw_info
        @raw_info ||= access_token.get('/v1.0/me').parsed['result']
      end
    end
  end
end

OmniAuth.config.add_camelization 'roomorama', 'Roomorama'