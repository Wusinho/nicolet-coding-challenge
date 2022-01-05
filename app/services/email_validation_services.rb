require 'net/http'
require 'net/https'

class EmailValidationServices

  def self.validate(email)
      uri = URI("https://emailvalidation.abstractapi.com/v1/?api_key=7e09dabd1cfc4949ba6e94254d3b9e67&email=#{email}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER
      
      request =  Net::HTTP::Get.new(uri)
      
      response = http.request(request)
      reponseJson = JSON.parse(response.body)
      reponseJson['quality_score'].to_f >= 0.7
  rescue StandardError => error
      false
  end

end