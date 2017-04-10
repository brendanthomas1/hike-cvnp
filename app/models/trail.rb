class Trail < ApplicationRecord
  TYPES = %w[Loop Point-to-Point].freeze

  validates :type, inclusion: { in: TYPES }
end
