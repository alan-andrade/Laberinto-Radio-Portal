# encoding: utf-8
class ProgramsController < ApplicationController
	before_filter	:require_user
  before_filter :require_admin_broadcaster, :only=>[:edit,:update,:destroy]

  def index
  	@programs				=	Program.includes(:broadcasters).all
    @myprograms 		= @current_user.programs
    @otherprograms	=	@programs - @myprograms

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs.to_json(:include=>:broadcasters) }
    end
  end

  def show
    @program = Program.includes(:broadcasters).find(params[:id])
    @canedit	=	@current_user.admins? @program

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program }
    end
  end

  def new
    @program 	= @current_user.programs.build
    @program.schedules.build
    @days			=	Day.all
    respond_to do |format|
      format.html
      format.json { render json: @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @program 	= @current_user.admin_programs.includes(:schedules).find(params[:id])
    @days			=	Day.all
  end
  
  def create
    @program = Program.new(params[:program])
    @program.broadcasters << @current_user
    respond_to do |format|
      if @program.save
        format.html { redirect_to @program, notice: 'Program was successfully created.' }
        format.json { render json: @program, status: :created, location: @program }
      else
        format.html { render action: "new" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.json
  def update
    @program = @current_user.admin_programs.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to @program, notice: 'Program was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program = @current_user.admin_programs.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :ok }
    end
  end

  private
  def require_admin_broadcaster
    redirect_to programs_url, notice: "No eres administrador de este programa." unless @current_user.admin_program_ids.include?(params[:id])
  end
end
