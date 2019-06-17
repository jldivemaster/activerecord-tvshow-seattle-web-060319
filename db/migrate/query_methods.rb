class QueryMethods < ActiveRecord::Migration[5.2]



  def most_popular_show
    Show.maximum(:rating)
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    Show.minimum(:rating)
  end

  def ratings_sum
    Show.sum(:rating)
  end

  def popular_shows
  Show.where("rating > 5")
  end

  def shows_by_alphabetical_order
    Show.order(:name)
  end
end
