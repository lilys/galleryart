class WorksController < ApplicationController
  def index 	 
    @works = Work.all
     respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teachers }
    end
  end


  def show
  end

  def edit
  end

  def new
   @work = Work.new
  end

  def create
    @work = Work.create( params[:work] )
  end
end
