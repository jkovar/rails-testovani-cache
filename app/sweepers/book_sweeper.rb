class BookSweeper < ActionController::Caching::Sweeper
  observe Book

  def sweep(book)
    Rails.cache.delete("views/books.json")
  end

  alias_method :after_create, :sweep
  alias_method :after_update, :sweep
  alias_method :after_destroy, :sweep

end