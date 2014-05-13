class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string :model
      t.float :speed
      t.string :cpu
      t.integer :cores

      t.timestamps
    end
  end
end
