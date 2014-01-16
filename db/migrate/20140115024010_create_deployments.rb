class CreateDeployments < ActiveRecord::Migration
  def change
    create_table :deployments do |t|
      t.integer :facility_id
      t.string :position

      t.timestamps
    end
  end
end
