class CommontsController < ApplicationController
	before_action :find_pist
	before_action :find_commont, only: [:destroy]

	def create
		@commont = @pist.commonts.create(params[:commont].permit(:content))
		@commont.user_id = current_user.id
		@commont.save		
	
	 	if @commont.save
	 		redirect_to pist_path(@pist)
	 	else
	 		render 'new'
	 	end	
	 end

	def destroy
		@commont.destroy
		redirect_to pist_path(@pist)

	end


	private

	def find_pist
		@pist = Pist.find(params[:pist_id])		
	end

	def find_commont
		@commont = @pist.commonts.find(params[:id])
		
	end
end
