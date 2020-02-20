class CreateShowsUser < ActiveRecord::Migration[5.2]
  def change
    create_table :shows_users do |t|
    	t.belongs_to :show
    	t.belongs_to :user
    end
  end
end
