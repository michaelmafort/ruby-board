class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.text :description
      t.string :priority
      t.string :status

      t.timestamps
    end
  end
end
