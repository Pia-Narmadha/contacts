class HomePageController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  def display
		@contact=Entity.sorted
		if (!params[:id].nil?)
			@contact_detail=Entity.find(params[:id])
		else
			@contact_detail=Entity.new()
		end
  end	
  def search
		@contact=Entity.search(params[:FirstName])
  end
  def new
		@contact=Entity.new()
  end
  def edit
		@contact=Entity.find(params[:id])
  end
  def update
		@contact=Entity.find(params[:id])  	
		if @contact.update_attributes(contact_params)
			redirect_to(:action =>'display',:id =>@contact.id)
		else
			render('edit')
		end
  end
  def create
		@contact=Entity.new(contact_params)
			
		if @contact.save
			redirect_to(:action=>'display',:id=>@contact.id)
		else
			render('new')
		end
  end
  def delete
  		@contact=Entity.find(params[:id])
		@contact.destroy
		redirect_to(:action =>'display')
  end
private
	def contact_params
		params.require(:contact).permit(:FirstName,:LastName,:DOB,:PhoneNumber,:Address,:email)
	end
	def record_not_found
		render('display')
	end
end
