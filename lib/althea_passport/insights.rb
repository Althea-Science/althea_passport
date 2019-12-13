# require 'mongo'

module AltheaPassport
  class Insights

    class << self
      def log_request(request)
         data = {
           time: Time.now.utc,
           url: request.url,
           service: AltheaPassport.configuration.service_name,
           browser_info: request.env['HTTP_USER_AGENT'],
           params: request.params,
           session: request.session.to_hash
         }

         AltheaPassport::ApiBase.call_althea_api(
           :post,
            request.session.to_hash[:token],
           AltheaPassport.configuration.insights_url,
           data
         )
      end
    end

  end
end
