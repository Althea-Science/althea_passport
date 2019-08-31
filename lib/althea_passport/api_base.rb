module AltheaPassport
  class ApiBase
    attr_accessor :token

    class << self

      def call_althea_api(method, token, url, attributes = nil)
        begin
          response = Faraday.send(method, url, attributes) do |req|
            req.headers['Authorization'] = "Token #{token}"
          end

          if response.success?
            if block_given?
              yield(response)
            else
              response
            end
          else
            raise AltheaPassport::ApiException.new("Http error status code: #{response.status} url: #{url}")
          end
        rescue => e
          Honeybadger.notify(e)
        end
      end

    end
  end
end
