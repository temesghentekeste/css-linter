class Reporter

 def report(errors, file)
  errors.delete(nil)
  errors_hash = Hash.new
  errors_hash[file] = errors
  formatter = Formatter.new
  errors_hash.each do |key,errorrs_array|
    key = formatter.format_file(key)
    errorrs_array.each {|error|
      puts "#{key}:#{error}"
    }
  end
 end
end