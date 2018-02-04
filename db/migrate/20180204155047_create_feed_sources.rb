class CreateFeedSources < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_sources do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
