class CreateExceptionImportances < ActiveRecord::Migration
  def change
    create_table :exception_importances do |t|
      t.string :name

      t.timestamps
    end

    add_index :exception_importances, :name, unique: true
  end
end
