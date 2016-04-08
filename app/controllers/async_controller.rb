class AsyncController < ApplicationController
  def index
    # We're using the inline adapter in this app it appears...
    # but ideally you would be doing this via Sidekiq or another
    # queue where we can actually do this async
    SendLotteryTicketToUserJob.perform_later
  end
end
