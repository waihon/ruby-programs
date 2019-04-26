module ImageUtils
  def self.included(base)
    base.extend(ClassMethods)
  end
end
