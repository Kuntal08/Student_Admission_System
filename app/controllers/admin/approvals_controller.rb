class Admin::ApprovalsController < Admin::BasesController
  before_action :is_admin?

  def index
    @seekers = Seeker.all
  end

  def edit
    @seeker = Seeker.find(params[:id])
  end

  def update
    @seeker = Seeker.find(params[:id])
    if @seeker.update(approval_params)
      render 'reject'
    else
      render 'edit'
    end
  end

  def approve
    @seeker = Seeker.find(params[:id])
    @seeker.approve = true
    @seeker.save
    redirect_to admin_approvals_url, notice: "Candidate Approved!"
  end

  def reject
    @seeker = Seeker.find(params[:id])
    @seeker.reject = true
    @seeker.save
    flash[:danger] = "Candidate Rejected!"
    redirect_to admin_approvals_url 
  end

  private
    def approval_params
      params.require(:seeker).permit(:reason,:reject)
    end

end
