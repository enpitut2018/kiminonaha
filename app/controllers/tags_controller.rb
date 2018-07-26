class TagsController < InheritedResources::Base

  private

    def tag_params
      params.require(:tag).permit(:name, :user_id)
    end
end

