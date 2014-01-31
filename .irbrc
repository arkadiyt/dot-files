# Print out very long back traces
IRB.conf[:BACK_TRACE_LIMIT] = 1000

# Convenience method for excluding exception backtrace lines from the vendor directory
Exception.class_eval do
  def bt
    backtrace.reject { |line| line.include?('vendor') }
  end
end
