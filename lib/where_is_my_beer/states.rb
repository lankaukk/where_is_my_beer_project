class WhereIsMyBeer::States
    attr_accessor :state

    def self.new_stuff_from_api(state)
        self.new.each_with_index do |value, key|
            value,
            key
        end
    end

    def initialize(state=nil)
        @state = state
    end
end