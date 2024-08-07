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
class Movie < ApplicationRecord
  searchkick
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_one_attached :image
end
