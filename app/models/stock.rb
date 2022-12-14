class Stock < ApplicationRecord

    def self.new_lookup(ticker)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
            secret_token: Rails.application.credentials.iex_client[:secret_token],
            endpoint: 'https://cloud.iexapis.com/v1'
        )
        return client.price(ticker)
    end
end
