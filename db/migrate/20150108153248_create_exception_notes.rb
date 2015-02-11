class CreateExceptionNotes < ActiveRecord::Migration
  def change
    create_table :exception_notes do |t|
      t.integer :logged_exception_id
      t.integer :user_id
      t.text    :message

      t.timestamps
    end
  end
end
