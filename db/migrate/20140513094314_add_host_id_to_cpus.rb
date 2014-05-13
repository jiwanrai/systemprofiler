class AddHostIdToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :host_id, :integer
  end
end
