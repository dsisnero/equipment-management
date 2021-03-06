class BuildingsController < SiteBaseController
  # GET /buildings
  # GET /buildings.xml



  def index
    @buildings = @site.buildings.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @buildings }
    end
  end

  # GET /buildings/1
  # GET /buildings/1.xml
  def show
    @building = @site.buildings.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @building }
    end
  end

  # GET /buildings/new
  # GET /buildings/new.xml
  def new
    @building = @site.buildings.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @building }
    end
  end

  # GET /buildings/1/edit
  def edit
    @building = @site.buildings.find(params[:id])
  end

  # POST /buildings
  # POST /buildings.xml
  def create
    @building = @site.buildings.build(params[:building])

    respond_to do |format|
      if @building.save
        flash[:notice] = 'Building was successfully created.'
        format.html { redirect_to([@site,@building]) }
        format.xml  { render :xml => @building, :status => :created, :location => @building }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @building.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /buildings/1
  # PUT /buildings/1.xml
  def update
    @building = @site.buildings.find(params[:id])

    respond_to do |format|
      if @building.update_attributes(params[:building])
        flash[:notice] = 'Building was successfully updated.'
        format.html { redirect_to([@site,@building]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @building.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.xml
  def destroy
    @building = @site.buildings.find(params[:id])
    @building.destroy

    respond_to do |format|
      format.html { redirect_to(site_buildings_url(@site)) }
      format.xml  { head :ok }
    end
  end

end
