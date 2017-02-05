class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end
end

 def update
   @group = Group.find(params[:id])

   if @group.update(group_params)

     redirect_to groups_path, notice: "Update Success"

   end
 end


 def destroy
     @group = Group.find(params[:id])
     @group.destroy
     flash[:alert] = "Group deleted"
     redirect_to groups_path
  end


 private

 def group_params
    params.require(:group).permit(:title, :description)
 end

end
