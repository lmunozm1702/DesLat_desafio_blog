class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :email
      t.string :image_url
      t.string :content

      t.timestamps
    end
  end
end
