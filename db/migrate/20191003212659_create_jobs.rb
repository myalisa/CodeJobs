class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :position_name
      t.integer :salary
      t.string :location
      t.string :company_name
      t.integer :company_size
      t.string :date_posted
      t.string :schedule
      t.text :summary

      t.timestamps
    end
  end
end
