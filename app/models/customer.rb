class Customer < ActiveRecord::Base
  after_create :send_welcome_email

  private

  def send_welcome_email
    # Evil, evil callback... :)
  end
end
