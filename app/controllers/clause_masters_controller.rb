class ClauseMastersController < ApplicationController
  before_action :set_clause_master, only: [:show, :edit, :update, :destroy]

  # GET /clause_masters
  # GET /clause_masters.json
  def index
    @clause_masters = ClauseMaster.all
  end

  # GET /clause_masters/1
  # GET /clause_masters/1.json
  def show; end

  # GET /clause_masters/new
  def new
    @clause_master = ClauseMaster.new
  end

  # GET /clause_masters/1/edit
  def edit; end

  # POST /clause_masters
  # POST /clause_masters.json
  def create
    @clause_master = ClauseMaster.new(clause_master_params)

    respond_to do |format|
      if @clause_master.save
        format.html { redirect_to @clause_master, notice: 'Clause master was successfully created.' }
        format.json { render :show, status: :created, location: @clause_master }
      else
        format.html { render :new }
        format.json { render json: @clause_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clause_masters/1
  # PATCH/PUT /clause_masters/1.json
  def update
    respond_to do |format|
      if @clause_master.update(clause_master_params)
        format.html { redirect_to @clause_master, notice: 'Clause master was successfully updated.' }
        format.json { render :show, status: :ok, location: @clause_master }
      else
        format.html { render :edit }
        format.json { render json: @clause_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clause_masters/1
  # DELETE /clause_masters/1.json
  def destroy
    @clause_master.destroy
    respond_to do |format|
      format.html { redirect_to clause_masters_url, notice: 'Clause master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_clause_master
    @clause_master = ClauseMaster.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def clause_master_params
    params.fetch(:clause_master, {})
  end
end
