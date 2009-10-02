module StandardDeviation
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    # Standard Deviation
    def std(column_name, options={})
      calculate :std, column_name, options
    end
    
    def variance(column_name, options={})
      calculate :variance, column_name, options
    end
    
    private
    def type_cast_calculated_value(value, column, operation = nil)
      operation = operation.to_s.downcase
      case operation
        when 'count' then value.to_i
        when 'sum'   then type_cast_using_column(value || '0', column)
        when 'avg', 'std', 'variance'
          value && (value.is_a?(Fixnum) ? value.to_f : value).to_d
        else type_cast_using_column(value, column)
      end
    end
    
  end
end