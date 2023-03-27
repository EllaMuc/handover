require 'docusign_esign'

module DocuSignClient
  class << self
    def api_client
      @api_client ||= begin
        config = DocuSign::Client::Configuration.new
        config.host = 'https://demo.docusign.net/restapi'
        config.add_default_header('Authorization', "Bearer #{ENV['DOCUSIGN_API_KEY']}")
        DocuSign::ApiClient.new(config)
      end
    end

    def envelopes_api
      @envelopes_api ||= DocuSign::EnvelopesApi.new(api_client)
    end
  end
end
