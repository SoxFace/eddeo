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

require 'rails_helper'

RSpec.describe View, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
