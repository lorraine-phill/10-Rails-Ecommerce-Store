require 'spec_helper'

describe 'an order confirmation email' do
	
	let(:emails){ActionMailer::Base.deliveries}

	before(:all) do
	    Order.create(number_of_items: 3)
	end

	it 'is sent when order is created' do
		expect(emails.count).to eq 1
	end

	it 'should have the subject "Order Confirmation"' do
		expect(emails.last.subject).to eq 'Order Confirmation'
	end

	it 'should include the number of items ordered' do
		expect(emails.last.body).to match /3 items/
	end

end