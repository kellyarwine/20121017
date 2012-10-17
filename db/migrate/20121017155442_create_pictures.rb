class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :title
      t.string :string

      t.timestamps
    end
  end
end
