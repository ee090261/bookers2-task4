class RelationshipsController < ApplicationController
	def follow
	  current_user.follow(params[:id])
	  redirect_back(fallback_location: root_path)
	end
	def unfollow
	  current_user.unfollow(params[:id])
	  redirect_back(fallback_location: root_path)
	end
	def follows
	  @user = current_user
    end
    def followers
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:name, :introduction, :profile_image)
    end
end
