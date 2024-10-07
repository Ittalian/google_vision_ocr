require "google/cloud/vision/v1"

vision_client = Google::Cloud::Vision::V1::ImageAnnotator::Client.new

file_path = "images/sample.png"

response = vision_client.text_detection(image: file_path)

response.responses.each do |res|
  res.text_annotations.each do |text|
    puts text.description
  end
end
