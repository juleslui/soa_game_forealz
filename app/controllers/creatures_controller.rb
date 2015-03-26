class CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  include CreaturesHelper
  # GET /creatures
  # GET /creatures.json
  def index
    @creatures = current_user.creatures
  end

  # GET /creatures/1
  # GET /creatures/1.json
  def show
    @creature = Creature.find(params[:id])
  end

  # GET /creatures/new
  def new
    @creature = Creature.new
  end

  # GET /creatures/1/edit
  def edit
  end



  def fight
    @creature = Creature.find(params[:id])
    @mycrea = current_user.creatures.find_by_id(6)

#@org = @team.org
#@group = @team.group

  end

  #def usemove
   # @usermove = Move.find(params[:id])
   # @oppocrea = Creature.find(params[:id])
   # @newhp = @oppocrea.hp - @usermove.damage
   # @oppcrea.update_attribute(:hp, @newhp)
   # redirect_to '/fight'
  #end

  #def minushp
   # @creature.hp = @creature.hp - move.damage
  #end

  def usemove
    @usermove = Move.find(params[:id])
    @oppocrea = Creature.find(params[:id])
    @newhp = @oppocrea.hp - @usermove.damage
    @oppcrea.update_attribute(:hp, @newhp)
    redirect_to '/fight'
  end

  def catch
    @oppocrea = Creature.find(params[:id])
    if @oppocrea.hp < 150
      @oppcrea.update_attribute(:user_id, current_user.id)
      redirect_to rename_path(@oppocrea)
    else
      redirect_to '/fight'
    end
  end

  def rename
  end


  # POST /creatures
  # POST /creatures.json
  def create
    @creature = Creature.new(creature_params)

    respond_to do |format|
      if @creature.save
        format.html { redirect_to @creature, notice: 'Creature was successfully created.' }
        format.json { render :show, status: :created, location: @creature }
      else
        format.html { render :new }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creatures/1
  # PATCH/PUT /creatures/1.json
  def update
    respond_to do |format|
      if @creature.update(creature_params)
        format.html { redirect_to @creature, notice: 'Creature was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature }
      else
        format.html { render :edit }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creatures/1
  # DELETE /creatures/1.json
  def destroy
    @creature.destroy
    respond_to do |format|
      format.html { redirect_to creatures_url, notice: 'Creature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def form
  end

  #private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = Creature.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creature_params
      params[:creature]
    end
end
