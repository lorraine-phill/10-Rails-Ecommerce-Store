class OrderNotifier < ActionMailer::Base

	default from: 'no-reply@myeccomerceapp.com'
	
	def confirmation_email(number_of_items)
		@number_of_items = number_of_items
		mail(to: 'shopper@example.com', subject: 'Order Confirmation')
	end

end
