class CustomersController < ApplicationController

	before_action :set_customer, only: [:edit, :update, :show, :destroy]

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end


	def create
		@customer = Customer.new(customer_params)

		if @customer.save
			flash[:success] = "Customer was successfully created"
			redirect_to customer_path(@customer)
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
		
	end

	def update

		if @customer.update(customer_params)
			flash[:success] = "Customer was successfully updated"
			redirect_to customer_path(@customer)
		else
			render 'edit'
		end
	end


	def destroy

		@customer.destroy
		flash[:danger] = "Customer was successfully deleted"
		redirect_to customers_path
	end

	private

	def set_customer
		@customer = Customer.find(params[:id])
	end

	def customer_params
		params.require(:customer).permit(:fname, :sname, :city)
	end

end