class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      
      t.text    :content
      t.integer :user_id
      t.integer :receiver

      t.timestamps
    end
  end
end
