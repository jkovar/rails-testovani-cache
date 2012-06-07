class BooksController < ActionController::Base
  respond_to :json

  caches_action :cached_index, :cache_path => proc {'books'}

  def index
    render :json => Book.all.to_json(:methods => [:century])
  end

  def cached_index
    render :json => Book.all.to_json(:methods => [:century])
  end

  def new
    Book.find_or_create_by_title_and_year_and_author(params[:title], params[:year], params[:author])
    render :nothing => true
  end

  def destroy
    Book.find(params[:id]).destroy
    render :nothing => true
  end

end