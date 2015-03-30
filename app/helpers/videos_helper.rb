module VideosHelper

  def upper_limb
    upper_limb = 
    [{:name=>"Fingers Positioning: DP"}, {:name=>"Fingers Positioning: Lateral"}, {:name=>"Fingers Positioning: Oblique"}, {:name=>"Thumb Positioning: Lateral"}, {:name=>"Thumb Positioning: Oblique"}, {:name=>"Thumb Positioning: DP"}, {:name=>"Hand Positioning: DP"}, {:name=>"Hand Positioning: Oblique"}, {:name=>"Hand Positioning: Lateral (Fan)"}, {:name=>"Hand Positioning: Lateral "}, {:name=>"Both Hands Positioning: AP "}, {:name=>"Both Hands Positioning: DP"}, {:name=>"Wrist Positioning: DP"}, {:name=>"Wrist Positioning: Oblique"}, {:name=>"Wrist Positioning: Lateral"}, {:name=>"Scaphoid Series: DP (Ulnar Deviation)"}, {:name=>"Scaphoid Series: DP (Oblique)"}, {:name=>"Scaphoid Series: Lateral"}, {:name=>"Scaphoid Series: Axial"}, {:name=>"Forearm Positioning: AP"}, {:name=>"Forearm Positioning: Lateral"}, {:name=>"Elbow Positioning: AP"}, {:name=>"Elbow Positioning: Lateral"}, {:name=>"Elbow Positioning: Oblique"}]
    find_videos(upper_limb)
  end

  def lower_limb
    lower_limb = 
      [{:name=>"Great Toe Positioning: AP"},
      {:name=>"Great Toe Positioning: Lateral"},
      {:name=>"Toes Positioning: AP"},
      {:name=>"Toes Positioning: Oblique"},
      {:name=>"Foot Positioning: DP"},
      {:name=>"Foot Positioning: Oblique"},
      {:name=>"Foot Positioning: Lateral"},
      {:name=>"Foot Positioning: DP Weight"},
      {:name=>"Foot Positioning: Lateral Weight"},
      {:name=>"Ankle Positioning: AP"},
      {:name=>"Ankle Positioning: AP (Mortice)"},
      {:name=>"Ankle Positioning: Medial"},
      {:name=>"Ankle Positioning: Lateral"},
      {:name=>"Tib/Fib Positioning: AP"},
      {:name=>"Tib / Fib Positioning: Lateral"},
      {:name=>"Knee Positioning: AP"},
      {:name=>"Knee Positioning: Lateral"},
      {:name=>"Knee Positioning: HBL"},
      {:name=>"Knee Positioning: Inter"},
      {:name=>"Knee Positioning: Skyline"},
      {:name=>"Femur Positioning: AP"},
      {:name=>"Femur Positioning: AP (Hip)"},
      {:name=>"Femur Positioning: Lateral"},
      {:name=>"Femur Positioning: Lateral (Hip)"}]
    find_videos(lower_limb)
  end

  def chest
    chest =
      [{:name=>"Chest Positioning: PA Ins"},
      {:name=>"Chest Positioning: PA Exp"},
      {:name=>"Chest Positioning: Lateral"},
      {:name=>"Chest Positioning: Chest AP"}]
    find_videos(chest)
  end

  def shoulder
    shoulder = 
      [{:name=>"Humerus Positioning: AP"},
      {:name=>"Humerus Positioning: Lateral"},
      {:name=>"Humerus Positioning: Stop Sign"},
      {:name=>"Shoulder Positioning: AP"},
      {:name=>"Shoulder Positioning: Lateral 15"},
      {:name=>"Shoulder Positioning: Lateral"},
      {:name=>"Shoulder Positioning: Oblique Internal"},
      {:name=>"Shoulder Positioning: Oblique External"},
      {:name=>"Shoulder Positioning: Supero"},
      {:name=>"Clavicle Positioning: PA"},
      {:name=>"Clavicle Positioning: PA (15 Degrees Caudal)"},
      {:name=>"Clavicle Positioning: AP"},
      {:name=>"Clavicle Positioning: AP (15 Degrees Cephalic)"}]
    find_videos(shoulder)
  end

  def pelvis
    pelvis = 
      [{:name=>"Pelvis Positioning: AP"},
      {:name=>"Hip Positioning: Judet Right Down"},
      {:name=>"Hip Positioning: Judet Left Up"},
      {:name=>"Hip Positioning: AP"},
      {:name=>"Hip Positioning: Oblique"},
      {:name=>"Hip Positioning: Horizontal Beam"},
      {:name=>"Abdomen Positioning: Supine"},
      {:name=>"Abdomen Positioning: Bladder"},
      {:name=>"Abdomen Positioning: Decubitous"},
      {:name=>"Abdomen Positioning: PA"}]
    find_videos(pelvis)
  end

  def spinal
    spinal = 
      [{:name=>"Cervical Spine Positioning: Lateral"},
      {:name=>"Cervical Spine Positioning: Swimmers"},
      {:name=>"Cervical Spine Positioning: AP Odontoid"},
      {:name=>"Cervical Spine Positioning: AP"},
      {:name=>"Cervical Spine Positioning: Oblique RA"},
      {:name=>"Cervical Spine Positioning: Oblique LA"},
      {:name=>"Cervical Spine Positioning: Oblique RP"},
      {:name=>"Cervical Spine Positioning: Oblique LP"},
      {:name=>"Thoracic Spine Positioning: AP"},
      {:name=>"Thoracic Spine Positioning: Lateral"},
      {:name=>"Lumbar Spine AP"},
      {:name=>"Lumbar Spine L5 AP"},
      {:name=>"Lumbar Spine Lateral"},
      {:name=>"Lumbar Spine L5 Lateral"},
      {:name=>"Lumbar Spine Left Oblique"},
      {:name=>"Lumbar Spine Right Oblique"},
      {:name=>"SI Joint Positioning: Left Oblique"},
      {:name=>"SI Joint Positioning: Right Oblique"},
      {:name=>"Sacrum Positioning: AP"},
      {:name=>"Coccyx Positioning: AP"},
      {:name=>"Sacrum & Coccyx Positioning: Lateral"}]
    find_videos(spinal)
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
