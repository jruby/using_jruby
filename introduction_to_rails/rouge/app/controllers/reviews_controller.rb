class ReviewsController < ApplicationController
  # START:before_filter
  before_filter :authenticate
  # END:before_filter

  # GET /reviews
  # GET /reviews.xml
  # START:index
  def index
    @reviews = Review.find(:all, :conditions => ['reviewer_id = ?', @reviewer.id])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reviews }
    end
  end
  # END:index

  # GET /reviews/1
  # GET /reviews/1.xml
  # START:show
  def show
    @review = Review.find_by_id_and_reviewer_id(params[:id], @reviewer)

    raise "Couldn't find Review with ID=#{params[:id]} \
and reviewer=#{@reviewer.name}" unless @review

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @review }
    end
  end
  # END:show

  # GET /reviews/new
  # GET /reviews/new.xml
  # START:new
  def new
    @restaurants = Restaurant.alphabetized
    @review = Review.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @review }
    end
  end
  # END:new

  # GET /reviews/1/edit
  def edit
    @restaurants = Restaurant.alphabetized
    @review = Review.find_by_id_and_reviewer_id(params[:id], @reviewer)

    raise "Couldn't find Review with ID=#{params[:id]}\
 and reviewer=#{@reviewer.name}" unless @review
  end

  # POST /reviews
  # POST /reviews.xml
  # START:create
  def create
    @review = @reviewer.reviews.build(params[:review])

    respond_to do |format|
      if @review.save
        format.html { redirect_to(@review,
                                  :notice => 'Review was successfully created.') }
        format.xml  { render :xml => @review,
                             :status => :created,
                             :location => @review }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @review.errors,
                             :status => :unprocessable_entity }
      end
    end
  end
  # END:create

  # PUT /reviews/1
  # PUT /reviews/1.xml
  def update
    @review = Review.find_by_id_and_reviewer_id(params[:id], @reviewer)

    raise "Couldn't find Review with ID=#{params[:id]} \
and reviewer=#{@reviewer.name}" unless @review

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to(@review,
                                  :notice => 'Review was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review.errors,
                             :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.xml
  def destroy
    @review = Review.find_by_id_and_reviewer_id(params[:id], @reviewer)

    raise "Couldn't find Review with ID=#{params[:id]} \
and reviewer=#{@reviewer.name}" unless @review

    @review.destroy

    respond_to do |format|
      format.html { redirect_to(reviews_url) }
      format.xml  { head :ok }
    end
  end

  # START:authenticate
  private

  def authenticate
    authenticate_or_request_with_http_basic("Reviews") do |user_name, password|
      @reviewer = Reviewer.find_by_username_and_password(user_name, password)
    end
  end
  # END:authenticate
end
