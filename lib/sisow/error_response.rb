module Sisow
  class ErrorResponse
    attr_accessor :code, :message

    def initialize(response)
      puts response.inspect
      @code    = response.errorresponse.error.errorcode
      @message = response.errorresponse.error.errormessage
    end

    def message
      "An error occurred: #{@code}. #{@message}"
    end
  end
end
