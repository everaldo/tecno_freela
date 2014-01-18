class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params[:job]
    end
end
