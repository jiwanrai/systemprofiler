class AddHostColumnsToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :vendor_id, :string
    add_column :cpus, :cpu_family, :string
    add_column :cpus, :stepping, :string
    add_column :cpus, :cache_size, :string
    add_column :cpus, :physical_id, :string
    add_column :cpus, :siblings, :string
    add_column :cpus, :core_id, :string
    add_column :cpus, :fpu, :string
    add_column :cpus, :flags, :string
  end
end
