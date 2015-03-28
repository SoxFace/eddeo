module VideosHelper

  def upper_limb
    upper_limb = 
    [{:name=>"Fingers Positioning: DP"}, {:name=>"Fingers Positioning: Lateral"}, {:name=>"Fingers Positioning: Oblique"}, {:name=>"Thumb Positioning: Lateral"}, {:name=>"Thumb Positioning: Oblique"}, {:name=>"Thumb Positioning: DP"}, {:name=>"Hand Positioning: DP"}, {:name=>"Hand Positioning: Oblique"}, {:name=>"Hand Positioning: Lateral (Fan)"}, {:name=>"Hand Positioning: Lateral "}, {:name=>"Both Hands Positioning: AP "}, {:name=>"Both Hands Positioning: DP"}, {:name=>"Wrist Positioning: DP"}, {:name=>"Wrist Positioning: Oblique"}, {:name=>"Wrist Positioning: Lateral"}, {:name=>"Scaphoid Series: DP (Ulnar Deviation)"}, {:name=>"Scaphoid Series: DP (Oblique)"}, {:name=>"Scaphoid Series: Lateral"}, {:name=>"Scaphoid Series: Axial"}, {:name=>"Forearm Positioning: AP"}, {:name=>"Forearm Positioning: Lateral"}, {:name=>"Elbow Positioning: AP"}, {:name=>"Elbow Positioning: Lateral"}, {:name=>"Elbow Positioning: Oblique"}]
    find_videos(upper_limb)
  end

  def lower_limb
    lower_limb = 
      [{:name=>"Great Toe Positioning: AP (Dorsiplantar)"},
      {:name=>"Great Toe Positioning: Lateral"},
      {:name=>"Toes Positioning: AP (Dorsiplantar)"},
      {:name=>"Toes Positioning: Oblique"},
      {:name=>"Foot Positioning: DP"},
      {:name=>"Foot Positioning: Oblique"},
      {:name=>"Foot Positioning: Lateral"},
      {:name=>"Foot Positioning: Weight Bearing DP"},
      {:name=>"Foot Positioning: Weight Bearing Lateral"},
      {:name=>"Ankle Positioning: AP"},
      {:name=>"Ankle Positioning: AP (Mortice)"},
      {:name=>"Ankle Positioning: Medial Oblique"},
      {:name=>"Ankle Positioning: Lateral"},
      {:name=>"Tib / Fib Positioning: AP"},
      {:name=>"Tib / Fib Positioning: Lateral"},
      {:name=>"Knee Positioning: AP"},
      {:name=>"Knee Positioning: Lateral"},
      {:name=>"Knee Positioning: Lateral HBL"},
      {:name=>"Knee Positioning: Intercondylar Notch"},
      {:name=>"Knee Positioning: Skyline Patella"},
      {:name=>"Femur Positioning: AP"},
      {:name=>"Femur Positioning: AP (Hip Down)"},
      {:name=>"Femur Positioning: Lateral (Knee Up)"},
      {:name=>"Femur Positioning: Lateral (Hip Down)"}]
    find_videos(lower_limb)
  end

  private
  # GO THROUGH ARRAY OF TITLES AND DISPLAY VIDEO URI
  def find_videos(array)
    @videos = []
    array.each do |current|
      video = Video.find_by( :name => current[:name] )
      @videos.push( video ) if video
    end
  end

end
