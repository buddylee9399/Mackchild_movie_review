# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :text
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_reviews_on_movie_id  (movie_id)
#  index_reviews_on_user_id   (user_id)
#
# Foreign Keys
#
#  movie_id  (movie_id => movies.id)
#  user_id   (user_id => users.id)
#
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
