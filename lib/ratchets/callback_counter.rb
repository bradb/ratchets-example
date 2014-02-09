class Ratchets::CallbackCounter
  class << self
    def count
      # ack is like grep, but optimized for searching source code.
      # See: http://beyondgrep.com/
      `ack --ruby "#{callback_matcher}" #{Rails.root.join("app")} | wc -l`.strip.to_i
    end

    def callback_matcher
      # Of course, other gems add callbacks of their own. This is just
      # an example of counting ActiveRecord callbacks.
      ActiveRecord::Callbacks::CALLBACKS.join("|")
    end
  end
end
