class Animal < ActiveRecord::Base
  class << self
    def from_json entry
      Animal.create!(JSON.load(entry.get_input_stream.read))
      rescue => e
        p e.message
    end
  end
end
