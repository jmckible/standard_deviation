module StandardDeviation
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def std(column_name, options={})
      calculate :std, column_name, options
    end
  end
end