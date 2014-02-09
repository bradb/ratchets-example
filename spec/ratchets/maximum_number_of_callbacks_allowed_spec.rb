require 'spec_helper'

describe "The maximum number of callbacks allowed" do
  it "cannot exceed Ratchets::MAX_CALLBACKS" do
    expect(Ratchets::CallbackCounter.count).to be <= Ratchets::MAX_CALLBACKS
  end
end
