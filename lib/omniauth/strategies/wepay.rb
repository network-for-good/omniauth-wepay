require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Wepay < OmniAuth::Strategies::OAuth2

      DEFAULT_PERMISSIONS = "manage_accounts,view_balance,collect_payments,refund_payments,view_user,preapprove_payments"

      option :fields, [:user_id, :name, :email]
      option :uid_field, :user_id
      option :scope, DEFAULT_PERMISSIONS
      option :client_options, {
        :authorize_url  => "https://stage.wepay.com/v2/oauth2/authorize",
        :token_url      => "https://stage.wepayapi.com/v2/oauth2/token",
        :site           => "https://stage.wepayapi.com/v2",
        :user_path      => "/user"
      }

      uid do
        raw_info["user_id"]
      end

      info do 
        {
         "email"        => raw_info["email"], 
         "name"         => "#{raw_info['first_name']} #{raw_info['last_name']}",
         "first_name"   => raw_info['first_name'],
         "last_name"    => raw_info['last_name']
         }
      end

      def raw_info
        c_options = options.client_options

        params = {
          code: request.params['code'], 
          client_id: options.client_id, 
          redirect_uri: callback_url, 
          client_secret: options.client_secret
        }.to_param

        url = c_options[:token_url] + "?" + params

        info = access_token.post(url).parsed

        user_url = c_options[:site] + c_options[:user_path]
        
        info2 = client.request(:post, user_url) do |req|
          req.headers["Authorization"] = "Bearer #{info["access_token"]}"
        end.parsed
        
        @raw_info ||= info.merge(info2)
      end
    end
  end
end

