class RemoveFieldNameFromCpus < ActiveRecord::Migration
  def change
    remove_column :hosts, :cpu_model, :string
    remove_column :hosts, :cpu_speed, :string
    remove_column :hosts, :cpu_cores, :integer
  end
end
