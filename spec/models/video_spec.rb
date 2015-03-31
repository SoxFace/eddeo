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

require 'rails_helper'

RSpec.describe Video, type: :model do

  # describe Video do

  #     it { should have_and_belong_to_many :users }
  #     it { should have_and_belong_to_many :categories }
  #     it { should have_many :views }

  # end

end
