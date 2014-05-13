class AddProcessorToCpu < ActiveRecord::Migration
  def change
    add_column :cpus, :processor, :string
  end
end
