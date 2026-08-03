class CreateApplications < ActiveRecord::Migration[8.1]
  def change
    create_table :applications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :company_name
      t.string :role_title
      t.string :status
      t.date :applied_date
      t.string :job_url
      t.string :location

      t.timestamps
    end
  end
end
