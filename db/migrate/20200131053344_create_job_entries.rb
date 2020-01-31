class CreateJobEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :job_entries do |t|
      t.belongs_to :job, null: false, foreign_key: true
      t.datetime :from
      t.datetime :until, null: true

      t.timestamps
    end
  end
end
