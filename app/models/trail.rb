class Trail < ApplicationRecord
  TYPES = %w(Loop Point-to-Point)

  validates :type, inclusion: { in: TYPES }
end
