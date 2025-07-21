class WebhookJob
  def perform(attributes)
    Webhook.send(attributes)
  end
end
