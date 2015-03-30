# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  uri         :string
#  name        :string
#  user_id     :integer
#  category_id :integer
#  vimeo_id    :integer
#  pictures    :string
#  stats       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :views

  validates :vimeo_id, uniqueness: true

  def self.search(query)
    where("video ilike ?", "%#{query}%") 
  end

end
