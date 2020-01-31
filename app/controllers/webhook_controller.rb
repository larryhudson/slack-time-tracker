class WebhookController < ApplicationController
    protect_from_forgery :except => :handle

    def handle
        begin
            event = JSON.parse(request.body.read)
            puts event
        end
    end
end
