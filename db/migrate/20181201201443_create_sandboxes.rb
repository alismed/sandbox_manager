class CreateSandboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :sandboxes do |t|
      t.string :name, limit: 100
      t.string :sandbox_type, limit: 20
      t.text :description
      t.date :start_date
      t.date :expected_end_date
      t.date :end_date
      t.string :owner
      t.string :owner_team

      t.timestamps
    end
  end
end
