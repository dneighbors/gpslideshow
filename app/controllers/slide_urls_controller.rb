class SlideUrlsController < ApplicationController
  # GET /slide_urls
  # GET /slide_urls.xml
  def index
    @slide_urls = SlideUrl.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @slide_urls }
    end
  end

  # GET /slide_urls/1
  # GET /slide_urls/1.xml
  def show
    @slide_url = SlideUrl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @slide_url }
    end
  end

  # GET /slide_urls/new
  # GET /slide_urls/new.xml
  def new
    @slide_url = SlideUrl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @slide_url }
    end
  end

  # GET /slide_urls/1/edit
  def edit
    @slide_url = SlideUrl.find(params[:id])
  end

  # POST /slide_urls
  # POST /slide_urls.xml
  def create
    @slide_url = SlideUrl.new(params[:slide_url])

    respond_to do |format|
      if @slide_url.save
        flash[:notice] = 'SlideUrl was successfully created.'
        format.html { redirect_to(@slide_url) }
        format.xml  { render :xml => @slide_url, :status => :created, :location => @slide_url }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @slide_url.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /slide_urls/1
  # PUT /slide_urls/1.xml
  def update
    @slide_url = SlideUrl.find(params[:id])

    respond_to do |format|
      if @slide_url.update_attributes(params[:slide_url])
        flash[:notice] = 'SlideUrl was successfully updated.'
        format.html { redirect_to(@slide_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @slide_url.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /slide_urls/1
  # DELETE /slide_urls/1.xml
  def destroy
    @slide_url = SlideUrl.find(params[:id])
    @slide_url.destroy

    respond_to do |format|
      format.html { redirect_to(slide_urls_url) }
      format.xml  { head :ok }
    end
  end
  
  # NOT RESTFUL.. TOO LAZY FOR ANTOHER CONTROLLER
  def viewer
    @urls = SlideUrl.find(:all)
  end
end
