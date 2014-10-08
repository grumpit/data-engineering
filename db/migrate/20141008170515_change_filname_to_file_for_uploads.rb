class ChangeFilnameToFileForUploads < ActiveRecord::Migration
  def change
    rename_column :uploads, :filename, :file
  end
end