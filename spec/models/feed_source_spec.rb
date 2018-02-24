require 'rails_helper'

RSpec.describe FeedSource, type: :model do
  context "#fetch" do
    it 'returns a valid array of feed entries' do
      feed_source = FeedSource.create!( name: 'Code-Squad News' ,
                                        url: 'http://feeds.feedburner.com/CodeSquadNews?format=xml'
                                      )
      entries = feed_source.fetch
      expect(entries.first).to include(:link)
    end
  end
end
