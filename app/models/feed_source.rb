require 'open-uri'

class FeedSource < ApplicationRecord
  def fetch
    rss = SimpleRSS.parse open(self.url)
    rss.entries
  end
end
