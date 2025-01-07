# frozen_string_literal: true

Dir[File.join File.dirname(__FILE__), '../../fix/*.rb'].each do |filename|
  puts "filename: #{filename.inspect}"
  require_relative filename
end
