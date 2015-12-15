module ItemsHelper
  include ActionView::Helpers::DateHelper

  def time_left(item)
      "#{distance_of_time_in_words(7.days.ago, item.created_at, include_seconds: true)} left"
    end
  end

