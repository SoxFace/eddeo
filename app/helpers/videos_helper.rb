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

  def chest
    chest =
      [{:name=>"Chest Positioning: PA Erect (Inspiration)"},
      {:name=>"Chest Positioning: PA Erect (Expiration)"},
      {:name=>"Chest Positioning: Lateral"},
      {:name=>"Chest Positioning: AP (Seated)"}]
    find_videos(chest)
  end

  def shoulder
    shoulder = 
      [{:name=>"Humerus Positioning: AP"},
      {:name=>"Humerus Positioning: Lateral AP"},
      {:name=>"Humerus Positioning: Stop Sign Lateral"},
      {:name=>"Shoulder Positioning: AP (Humerus Neutral)"},
      {:name=>"Shoulder Positioning: Lateral (15 Degrees Caudal)"},
      {:name=>"Shoulder Positioning: Lateral"},
      {:name=>"Shoulder Positioning: AP Oblique (15 Degrees Caudal Internal Rotation)"},
      {:name=>"Shoulder Positioning: AP Oblique (15 Degrees Caudal External Rotation)"},
      {:name=>"Shoulder Positioning: Supero-Inferior"},
      {:name=>"Clavicle Positioning: PA"},
      {:name=>"Clavicle Positioning: PA (15 Degrees Caudal)"},
      {:name=>"Clavicle Positioning: AP"},
      {:name=>"Clavicle Positioning: AP (15 Degrees Cephalic)"}]
    find_videos(shoulder)
  end

  def pelvis
    pelvis = 
      [{:name=>"Pelvis Positioning: AP"},
      {:name=>"Hip Positioning: Right Downside (Judet View)"},
      {:name=>"Hip Positioning: Left Upside (Judet View)"},
      {:name=>"Hip Positioning: Single Hip AP"},
      {:name=>"Hip Positioning: Oblique"},
      {:name=>"Hip Positioning: Horizontal Beam Lateral"},
      {:name=>"Abdomen Positioning: Supine / KUB"},
      {:name=>"Abdomen Positioning: Bladder"},
      {:name=>"Abdomen Positioning: Left Decubitous"},
      {:name=>"Abdomen Positioning: PA Erect"}]
    find_videos(pelvis)
  end

  def spinal
    spinal = 
      [{:name=>"Cervical Spine Positioning: Lateral (Neutral)"},
      {:name=>"Cervical Spine Positioning: Lateral (Swimmers)"},
      {:name=>"Cervical Spine Positioning: AP Odontoid"},
      {:name=>"Cervical Spine Positioning: AP"},
      {:name=>"Cervical Spine Positioning: Right Anterior Oblique"},
      {:name=>"Cervical Spine Positioning: Left Anterior Oblique"},
      {:name=>"Cervical Spine Positioning: Right Posterior Oblique"},
      {:name=>"Cervical Spine Positioning: Left Posterior Oblique"},
      {:name=>"Thoracic Spine Positioning: AP (Supine)"},
      {:name=>"Thoracic Spine Positioning: Lateral (On Table Breathing Technique)"},
      {:name=>"Lumbar Spine AP"},
      {:name=>"Lumbar Spine L5/S1 Junction AP (15 Degrees Cranial Angulation)"},
      {:name=>"Lumbar Spine Lateral"},
      {:name=>"Lumbar Spine L5/S1 Junction Lateral"},
      {:name=>"Lumbar Spine Left Posterior Oblique"},
      {:name=>"Lumbar Spine Right Posterior Oblique"},
      {:name=>"SI Joint Positioning: Left Oblique"},
      {:name=>"SI Joint Positioning: Right Oblique"},
      {:name=>"Sacrum Positioning: AP (15 Degrees Cranial Angulation)"},
      {:name=>"Coccyx Positioning: AP (15 Degrees Cranial Angulation)"},
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
