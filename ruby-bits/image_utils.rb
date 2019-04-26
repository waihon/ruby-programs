require 'active_support/concern'

module ImageUtils
  extend ActiveSupport::Concern

  module ClassMethods
    def clean_up
      puts "#{self.name} is cleaning up"
    end
  end
    
  def preview
    "Previewing '#{self.file_name}'"
  end

  def transfer(destination)
    "Transferring '#{self.file_name}' to #{destination}"
  end
end
