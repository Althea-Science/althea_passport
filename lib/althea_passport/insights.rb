# require 'mongo'

module AltheaPassport
  class Insights

    class << self
      # *********DIRECT TO MONGO**********
      #
      # def log_request(request)
      #   client = Mongo::Client.new('mongodb://127.0.0.1:27017/test')
      #   requests = client[:requests]
      #   request = {
      #     url: request.url,
      #     browser_info: request.env['HTTP_USER_AGENT'],
      #     params: request.params,
      #     session: request.session.to_hash
      #   }
      #   requests.insert_one(request)
      # end

      def log_request(request)
        # data = {
        #   time: Time.now.utc,
        #   url: request.url,
        #   service: AltheaPassport.configuration.service_name,
        #   browser_info: request.env['HTTP_USER_AGENT'],
        #   params: request.params,
        #   session: request.session.to_hash
        # }
        #
        # begin
        #   AltheaPassport::ApiBase.call_althea_api(
        #     :post,
        #      request.session.to_hash[:token],
        #     AltheaPassport.configuration.insights_url,
        #     data
        #   )
        # rescue => e
        #
        # end
      end
      
    end

  end
end
