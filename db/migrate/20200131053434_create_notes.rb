class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :text
      t.belongs_to :job_entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
