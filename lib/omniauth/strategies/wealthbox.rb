# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Wealthbox < OmniAuth::Strategies::OAuth2 # rubocop:disable Style/Documentation
      USER_INFO_URL = 'https://api.crmworkspace.com/v1/me'

      option :client_options, {
        site: 'https://api.crmworkspace.com',
        authorize_url: 'https://app.crmworkspace.com/oauth/authorize',
        token_url: 'https://app.crmworkspace.com/oauth/token'
      }

      def request_phase
        super
      end

      def authorize_params
        super.tap do |params|
          params[:client_options] = request.params['client_options'] if request.params['client_options']
        end
      end

      uid { me['id'].to_s }

      info do
        {
          'name' => raw_info['name'],
          'email' => raw_info['email']
        }
      end

      extra do
        { raw_info: me }
      end

      def raw_info
        @raw_info ||= {}
      end

      def me
        @me ||= begin
          access_token.options[:mode] = :header
          access_token.get(USER_INFO_URL, headers: { "Content-Type": 'application/json' }).parsed
        end
      end

      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end
    end
  end
end
