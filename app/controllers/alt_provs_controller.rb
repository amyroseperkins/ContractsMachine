class AltProvsController < ApplicationController
    
    filter_resource_access :nested_in => :contracts

    def index
        @alt_provs = AltProv.all

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @alt_provs }
        end
      end

      # GET /alt_provs/1
      # GET /alt_provs/1.xml
      def show
        @alt_prov = AltProv.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @alt_prov }
        end
      end

      # GET /alt_provs/new
      # GET /alt_provs/new.xml
      def new
        @alt_prov = AltProv.new

        respond_to do |format|
          format.html # new.html.erb
          format.xml  { render :xml => @alt_prov }
        end
      end

      #GET /alt_provs/child 
      def child
        @alt_prov = AltProv.new
        @template_alt_provs = AltProv.find_all_by_parent_id(1)

        respond_to do |format|
          format.html #child.html.erb
          format.xml { render :xml => @alt_prov }
        end
      end

      # GET /alt_provs/1/edit
      def edit
        @alt_prov = AltProv.find(params[:id])
      end

      # POST /alt_provs
      # POST /alt_provs.xml
      def create
        @alt_prov = AltProv.new(params[:alt_prov])

        respond_to do |format|
          if @alt_prov.save
            format.html { redirect_to(@alt_prov, :notice => 'AltProv was successfully created.') }
            format.xml  { render :xml => @alt_prov, :status => :created, :location => @alt_prov }
          else
            format.html { render :action => "new" }
            format.xml  { render :xml => @alt_prov.errors, :status => :unprocessable_entity }
          end
        end
      end

      # PUT /alt_provs/1
      # PUT /alt_provs/1.xml
      def update
        @alt_prov = AltProv.find(params[:id])

        respond_to do |format|
          if @alt_prov.update_attributes(params[:alt_prov])
            format.html { redirect_to(@alt_prov, :notice => 'Contract was successfully updated.') }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @alt_prov.errors, :status => :unprocessable_entity }
          end
        end
      end

      # POST /alt_provs/child
      def create_child
        @alt_prov = AltProv.new(params[:alt_prov])
        @parenthash = @alt_prov.parenthash
        @p_alt_prov = AltProv.find(@alt_prov.parent_id)
        @alt_prov = @p_alt_prov.children.create(@parenthash)
        respond_to do |format|
          if @alt_prov.save
            format.html { redirect_to(@alt_prov, :notice => 'AltProv was successfully cloned.') }
            format.xml  { head :ok }
          else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @alt_prov.errors, :status => :unprocessable_entity }
          end
        end
      end

      # DELETE /alt_provs/1
      # DELETE /alt_provs/1.xml
      def destroy
        @alt_prov = AltProv.find(params[:id])
        @alt_prov.destroy

        respond_to do |format|
          format.html { redirect_to(alt_provs_url) }
          format.xml  { head :ok }
        end
      end
end
