# == Schema Information
#
# Table name: views
#
#  id         :integer          not null, primary key
#  video_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class View < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :videos
end
