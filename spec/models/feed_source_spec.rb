require 'rails_helper'

RSpec.describe FeedSource, type: :model do
  context "#fetch" do
    let(:feed_source) do 
      FeedSource.new(
        name: 'Code-Squad News',
        url:  'http://feeds.feedburner.com/CodeSquadNews?format=xml'        
      )
    end

    it 'returns a valid array of feed entries' do
      entries = feed_source.fetch
      #binding.pry
      expect(entries.first).to have_key(:title)
      expect(entries.last).to have_key(:link)
    end
  end
end
