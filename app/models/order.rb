class Order < ActiveRecord::Base
  after_create :generate_receipt

  private

  def generate_receipt
    # Evil, evil callback... :)
  end
end
