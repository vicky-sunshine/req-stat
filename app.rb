require 'sinatra/base'

##
# Simple web service to delver codebadges functionality
class ReqStatAPI < Sinatra::Base
  configure :production, :development do
    enable :logging
  end

  get_root = lambda do
    "Your IP address is #{request.ip}, use #{request.request_method} #{request.path}"
  end

  get '/', &get_root
end
