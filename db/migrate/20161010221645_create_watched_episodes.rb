class CreateWatchedEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :watched_episodes do |t|
      t.integer :episode_id
      t.integer :user_id

      t.timestamps
    end
  end
end
