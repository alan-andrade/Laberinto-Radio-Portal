# encoding: utf-8
class PresentersController < ApplicationController
	before_filter :require_user
	before_filter	:need_admin, :only	=> [:new,:destroy]

  def index
    @presenters = Presenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presenters }
    end
  end

  def show
    @presenter = Presenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @presenter }
    end
  end

  def new
    @presenter = Presenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @presenter }
    end
  end

  def edit
    @presenter = @current_user.admin? ? Presenter.find(params[:id]) : @current_user
  end

  def create
    @presenter = Presenter.new(params[:presenter])

    respond_to do |format|
      if @presenter.save
        PresentersMailer.invitation_email(@presenter).deliver
        format.html { redirect_to @presenter, notice: 'Presenter was successfully created.' }
        format.json { render json: @presenter, status: :created, location: @presenter }
      else
        format.html { render action: "new" }
        format.json { render json: @presenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presenters/1
  # PUT /presenters/1.json
  def update
    @presenter = Presenter.find(params[:id])

    respond_to do |format|
      if @presenter.update_attributes(params[:presenter])
        format.html { redirect_to @presenter, notice: 'Presenter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @presenter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @presenter = Presenter.find(params[:id])
    @presenter.destroy

    respond_to do |format|
      format.html { redirect_to presenters_url }
      format.json { head :ok }
    end
  end
end
