class ClauseMastersController < ApplicationController
  before_action :set_clause_master, only: [:edit, :update, :destroy]

  def index
    @clause_masters = ClauseMaster.all
  end

  def new
    @clause_master = ClauseMaster.new
  end

  def edit; end

  def create
    @clause_master = ClauseMaster.new(clause_master_params)

    respond_to do |format|
      if @clause_master.save
        format.html { redirect_to clause_masters_path, notice: 'Clause master was successfully created.' }
        format.json { render :show, status: :created, location: @clause_master }
      else
        format.html { render :new }
        format.json { render json: @clause_master.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clause_master.update(clause_master_params)
        format.html { redirect_to clause_masters_path, notice: 'Clause master was successfully updated.' }
        format.json { render :show, status: :ok, location: @clause_master }
      else
        format.html { render :edit }
        format.json { render json: @clause_master.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clause_master.destroy
    respond_to do |format|
      format.html { redirect_to clause_masters_url, notice: 'Clause master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_clause_master
    @clause_master = ClauseMaster.find(params[:id])
  end

  def clause_master_params
    params.permit(:name, :content, :note, :status)
  end
end
