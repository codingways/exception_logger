module ExceptionLogger
	class ExceptionNote < ActiveRecord::Base
		self.table_name = "exception_notes"

		validates :user_id, :logged_exception_id, :message, presence: true

	  belongs_to :logged_exception, class_name: "LoggedException"
	  belongs_to :user
	end
end