class Trail < ApplicationRecord
  TYPES = %w[Loop Point-to-Point].freeze

  validates :trail_type, inclusion: { in: TYPES }
end
