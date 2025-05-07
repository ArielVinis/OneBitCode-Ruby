class User < ApplicationRecord
    enum :kind, { knight: 0, wizard: 1 }

    validates :nickname, presence: true, length: { minimum: 3, maximum: 20 }
    validates :kind, presence: true
    validates :level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 99 }

    def title
        "#{self.kind} - #{self.nickname} - ##{self.level}"
    end
end
