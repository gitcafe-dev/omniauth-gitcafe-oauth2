require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class GitCafe < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site           => "https://gitcafe.com",
        :authorize_url  => "/oauth/authorize",
      }

      option :token_params, {
        :parse          => :json
      }

      uid do
        raw_info['id']
      end

      info do
        {
          :id           => raw_info['id'],
          :email        => raw_info['email'],
          :username     => raw_info['username'],
          :fullname     => raw_info['fullname'],
          :location     => raw_info['location'],
          :url          => raw_info['url'],
          :avatar_url   => raw_info['avatar_url'],
          :company      => raw_info['company'],
          :public_repos => raw_info['public_repos'],
          :followers    => raw_info['followers'],
          :following    => raw_info['following']
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        access_token.client.site = 'https://api.gitcafe.com'
        @raw_info ||= access_token.get("/api/v1/user.json").parsed
      end
    end
  end
end

OmniAuth.config.add_camelization "gitcafe", "GitCafe"
