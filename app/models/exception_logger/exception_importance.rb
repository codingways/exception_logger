module ExceptionLogger
	class ExceptionImportance < ActiveRecord::Base
		self.table_name = "exception_importances"

		validates :name, :value, presence: true
		validates :name, uniqueness: true

		validates :value, numericality: { greater_than: 0 }

	  has_many :logged_exceptions, class_name: "LoggedException"

	  def to_s
	  	"#{self.name}"
	  end
	end
end