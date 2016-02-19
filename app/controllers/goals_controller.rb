class GoalsController < ApplicationController

	def create

		@goal = current_user.goals.new(goal_params)

		if @goal.save
			flash[:notice] = "Goal Saved"
		else
			flash[:error] = "Goal was not saved"
		end

		redirect_to current_user
	
	end

	def destroy

		@goal = Goal.find(params[:id])

		if @goal.destroy
			flash[:notice] = "\"#{@goal}\" was deleted"
		else
			flash[:error] = "There was an error deleting this goal"
		end

	end

	private

	def goal_params
		params.require(:goal).permit(:description)
	end

end


