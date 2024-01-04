class CreateFeeds < ActiveRecord::Migration[7.1]
  def change
    create_table :feeds do |t|
      t.string :title
      t.string :content
      t.string :author
      t.string :img_url

      t.timestamps
    end
  end
end
