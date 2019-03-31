class CreateClauseMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :clause_masters do |t|
      t.string :name
      t.string :content
      t.string :note
      t.string :status

      t.timestamps
    end
  end
end
