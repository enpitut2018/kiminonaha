class TagsController < InheritedResources::Base
  def index
    @user = current_user
    @tags = @user.tags.all
  end


  private

    def tag_params
      params.require(:tag).permit(:name, :user_id)
    end
end

