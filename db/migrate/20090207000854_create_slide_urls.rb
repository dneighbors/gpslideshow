class CreateSlideUrls < ActiveRecord::Migration
  def self.up
    create_table :slide_urls do |t|
      t.string :title
      t.string :url
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    drop_table :slide_urls
  end
end
