# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  description  :text
#  director     :string
#  movie_length :string
#  rating       :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_movies_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
