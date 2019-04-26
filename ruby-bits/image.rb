require './image_processing'

class Image
  include ImageProcessing

  attr_reader :file_name

  def initialize(file_name)
    @file_name = file_name
  end
end
