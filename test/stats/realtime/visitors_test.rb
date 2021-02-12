require "test_helper"

class PlausibleApiRealtimeVisitorsTest < Minitest::Test
  def test_request_url
    visitors = PlausibleApi::Stats::Realtime::Visitors.new
    assert_equal visitors.request_url, 
      '/api/v1/stats/realtime/visitors?site_id=$SITE_ID'
  end
end