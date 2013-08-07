class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :origin_url
      t.string :short_url
      t.belongs_to :user

      t.timestamps

    end
  end
end
