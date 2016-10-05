class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.belongs_to :season, index: true
      t.integer :number
      t.text :plot
      t.date :released_at

      t.timestamps
    end
  end
end
