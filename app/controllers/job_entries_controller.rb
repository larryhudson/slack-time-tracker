class JobEntriesController < ApplicationController
  before_action :set_job_entry, only: [:show, :edit, :update, :destroy]

  # GET /job_entries
  # GET /job_entries.json
  def index
    @job_entries = JobEntry.all
  end

  # GET /job_entries/1
  # GET /job_entries/1.json
  def show
  end

  # GET /job_entries/new
  def new
    @job_entry = JobEntry.new
  end

  # GET /job_entries/1/edit
  def edit
  end

  # POST /job_entries
  # POST /job_entries.json
  def create
    @job_entry = JobEntry.new(job_entry_params)

    respond_to do |format|
      if @job_entry.save
        format.html { redirect_to @job_entry, notice: 'Job entry was successfully created.' }
        format.json { render :show, status: :created, location: @job_entry }
      else
        format.html { render :new }
        format.json { render json: @job_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_entries/1
  # PATCH/PUT /job_entries/1.json
  def update
    respond_to do |format|
      if @job_entry.update(job_entry_params)
        format.html { redirect_to @job_entry, notice: 'Job entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_entry }
      else
        format.html { render :edit }
        format.json { render json: @job_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_entries/1
  # DELETE /job_entries/1.json
  def destroy
    @job_entry.destroy
    respond_to do |format|
      format.html { redirect_to job_entries_url, notice: 'Job entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_entry
      @job_entry = JobEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_entry_params
      params.require(:job_entry).permit(:job_id, :from, :until)
    end
end
