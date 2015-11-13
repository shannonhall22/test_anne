class ContactMessageJob < ActiveJob::Base
  queue_as :default
  include SuckerPunch::Job

  def perform(event)
    Log.new(event).track
  end
end
