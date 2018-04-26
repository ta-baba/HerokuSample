class MembersController < ApplicationController
  
  def disp
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(member_params)

    @member.save
    redirect_to :action => "disp", :id => @member.id
    # redirect_to members_disp_url(id: @member.id)
  end
  
  def edit
    @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])
    @member.update_attributes(member_params)
    redirect_to :action => "disp", :id => @member.id
  end
  
  def destroy
    
  end
  
private
  def member_params
    params.require(:member).permit(:name, :age)
  end
  
end
