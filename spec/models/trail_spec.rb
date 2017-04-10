require 'rails_helper'

RSpec.describe Trail, type: :model do
  types = %w[Loop Point-to-Point]
  it { is_expected.to validate_inclusion_of(:trail_type).in_array(types) }
end
