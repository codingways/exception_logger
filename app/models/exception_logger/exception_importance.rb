module ExceptionLogger
	class ExceptionImportance < ActiveRecord::Base
		self.table_name = "exception_importances"

		validates :name, presence: true, uniqueness: true

	  has_many :logged_exceptions, class_name: "LoggedException"

	  def to_s
	  	"#{self.name}"
	  end
	end
end