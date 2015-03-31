require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the VideosHelper. For example:
#
# describe VideosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe VideosHelper, type: :helper do

  describe "find Videos" do
    
    it 'should find videos in the db using exact titles' do
      expect(upper_limb).to_not be_nil
    end
  end

end
