# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  uri         :string
#  name        :string
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :categories

  def initialize
    @options = { headers: { 'Authorization' => "bearer #{VIMEO_TOKEN}" } }
  end


end
