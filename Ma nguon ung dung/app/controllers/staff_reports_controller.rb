class StaffReportsController < ApplicationController
	def index
	end

	def revenue_report
		@type_report = params[:id]
		# render plain: params[:id]

		@service_revenue_list ||= []
		@total_service_revenue = 0

		if @type_report == "all" || @type_report == "service"
			services_list = Service.all
			@service_register = ServiceRegister.all
			ind = 0
			for service in services_list do
				ind = ind + 1
				service_name = service.name
				count = @service_register.where(services_id: service.id).count
				revenue = count * service.service_price
				@total_service_revenue += revenue
				@service_revenue_list.push({ind: ind, service_name: service_name, count: count, revenue: revenue})
			end
		end
		# render json: @service_revenue, status: :ok


		@commission_revenue_list ||= []
		@total_commission_revenue = 0

		if @type_report == "all" || @type_report == "commission"
			bill_list = Bill.all
			ind = 0
			for bill in bill_list do
				ind = ind + 1
				product_id = bill.products_id
				product_name = Product.find(product_id).name
				price = bill.price
				commission = price * bill.commission
				@total_commission_revenue += commission
				@commission_revenue_list.push({ind: ind, product_id: product_id, product_name: product_name, price: price, commission: commission})
			end
		end
		# render json: @commission_revenue_list, status: :ok

		@total_revenue = @total_service_revenue + @total_commission_revenue
	end

	def profit_report
		# render plain: params[:id]
		@type_report = params[:id]

		@service_income = 0
		services_list = Service.all
		service_register = ServiceRegister.all
		for service in services_list do
			count = service_register.where(services_id: service.id).count
			@service_income += count * service.service_price
		end
		
		@commission_income = 0
		bill_list = Bill.all
		for bill in bill_list do
			@commission_income += bill.price * bill.commission
		end

		@total_income = @service_income + @commission_income

		@salary_expense = 5000
		@host_expense = 1000
		@advertisement_expense = 3000

		@total_expense = @salary_expense + @host_expense + @advertisement_expense

		@net_profit = @total_income - @total_expense
	end
end
