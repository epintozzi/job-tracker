class CommentsController < ApplicationController

  def create
    @job = Job.find(params[:job_id])
    @company = @job.company
    @comment = @job.comments.new(comment_params)
    if @comment.update(comment_params)
      redirect_to company_job_path(@company, @job)
    else
      render company_job_path(@company, @job)
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :job_id)
  end

end
