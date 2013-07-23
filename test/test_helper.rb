unless RUBY_PLATFORM == "java"
  require 'coveralls'
  Coveralls.wear!
end

require "bundler/setup"

require "test/unit"
require "vcr"
require "mechanize"
require "compactor"
require "mocha"
require "awesome_print"

VCR.configure do |vcr|
  vcr.cassette_library_dir = 'test/compactor/fixtures/vcr_cassettes'
  vcr.hook_into :fakeweb
end
FakeWeb.allow_net_connect = false

class Compactor::Amazon::ReportScraper
  def slowdown_like_a_human(count)
    # do not slowdown
  end
end
