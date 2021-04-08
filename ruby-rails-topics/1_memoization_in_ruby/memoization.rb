require 'net/http'
require 'uri'
require 'json'

class SpaceXLaunches

  def stats
    puts({
      success: success,
      failure: failure
    })
  end

  def success
    data.select { |d| d['launch_success']}.count
  end

  def failure
    data.select { |d| d['launch_success'] == false }.count
  end

  private

  def data
    @data ||= fetch_data
  end

  def fetch_data
    puts "Fetching Data..."
    sleep 3
    data = JSON.parse(Net::HTTP.get(URI.parse('https://api.spacexdata.com/v3/launches')))
    puts "Fetching data completed"
    data
  end
end

launch_stats = SpaceXLaunches.new
launch_stats.stats
