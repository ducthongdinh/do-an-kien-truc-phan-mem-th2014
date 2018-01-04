# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  
  version :thumb do
    process :resize_to_fit => [50, 50]
  end

end
