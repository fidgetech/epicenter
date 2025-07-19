# TESTING ONLY
class EmailsTestController < ApplicationController
  def send_test
    EmailJob.perform_later(
      { :from => ENV['FROM_EMAIL_REVIEW'],
        :to => '<test@mortalwombat.net>',
        :subject => 'Test Email',
        :text => 'This is a test email sent from the EmailsTestController.'
      }
    )
    redirect_to courses_path, notice: 'Test email queued successfully.'
  end
end
