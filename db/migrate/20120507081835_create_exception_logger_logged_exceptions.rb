class CreateExceptionLoggerLoggedExceptions < ActiveRecord::Migration
  def change
    create_table :logged_exceptions, :force => true do |t|
      t.string :exception_class
      t.string :controller_name
      t.string :action_name
      t.text :message
      t.text :backtrace
      t.text :environment
      t.text :request
      t.datetime :created_at
      t.integer :user_id
      t.integer :exception_importance_id
      t.datetime :resolved_at
      t.integer :resolved_by
    end
  end
end
