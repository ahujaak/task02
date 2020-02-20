class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
    	t.string :name
    	t.datetime :time
    	t.belongs_to :channel
      t.timestamps
    end
  end
end
