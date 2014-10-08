class AddProcessedFlagToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :processed, :boolean, default: false
  end
end
