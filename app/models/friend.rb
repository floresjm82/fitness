class Friend < ActiveRecord::Base

	belongs_to :user
	belongs_to :friend

	def self.users
		User.where(id: pluck(:user_id))
	end

  def user
    User.find(user_id)
  end


end
