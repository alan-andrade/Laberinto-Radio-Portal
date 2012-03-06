class ProgramsController < ApplicationController
	before_filter	:require_user

  def index
  	@programs				=	Program.includes(:presenters).all
    @myprograms 		= @current_user.programs
    @otherprograms	=	@programs - @myprograms

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs.to_json(:include=>:presenters) }
    end
  end

  def show
    @program = Program.includes(:presenters).find(params[:id])
    @canedit	=	@current_user.programs.include?(@program)

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
    @program 	= @current_user.programs.includes(:schedules).find(params[:id])
    @days			=	Day.all
  end
  
  def create
    @program = @current_user.programs.build(params[:program])
		@program.presenters << @current_user
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
    @program = @current_user.programs.find(params[:id])

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
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to programs_url }
      format.json { head :ok }
    end
  end
end
