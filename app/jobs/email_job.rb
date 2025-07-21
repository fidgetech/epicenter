class EmailJob
  def self.perform_later(args)
    EmailClient.create.send_message(ENV['MAILGUN_DOMAIN'], args)
  end
end
