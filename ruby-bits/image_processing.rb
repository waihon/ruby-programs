require './image_utils'
require 'active_support/concern' 

module ImageProcessing
  extend ActiveSupport::Concern
  include ImageUtils

  included do
    clean_up # calls method on Image class
  end
end
