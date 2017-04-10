class ChangeTrailTypeToTrailType < ActiveRecord::Migration[5.1]
  def change
    rename_column :trails, :type, :trail_type
  end
end
