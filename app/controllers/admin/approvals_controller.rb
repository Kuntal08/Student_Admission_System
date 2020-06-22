class Admin::ApprovalsController < Admin::BasesController
  before_action :is_admin?

  def index
    @seekers = Seeker.all
  end

  def show
    @seeker = Seeker.find(params[:id])
    @board = Board.find(@seeker.board)
    @school = School.find(@seeker.school)
    @division = Division.find(@seeker.division)
  end

  def approve
    @seeker = Seeker.find(params[:id])
    @seeker.approve = true
    @seeker.save
    redirect_to admin_approvals_url, notice: "Candidate Approved!"
  end

  def reject
    @seeker = Seeker.find(params[:id])
    @seeker.params[:reject] == true
    @seeker.save
    redirect_to admin_approvals, notice: "Candidate Rejected!"
  end

end
