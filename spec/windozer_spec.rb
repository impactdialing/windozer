require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/windozer'

describe Windozer do
  def windozed_file
    File.join( File.dirname(__FILE__), 'fixtures', 'windozed_file.csv' )
  end

  describe '.to_unix(str)' do
    it 'removes invalid UTF-16 characters' do
      blurged_file = File.open(windozed_file).read

      lambda{ blurged_file.gsub('a', 'a') }.must_raise ArgumentError

      cleaned = Windozer.to_unix(blurged_file)

      cleaned.gsub('a', 'a')
      cleaned.wont_include("\r")
    end
  end
end