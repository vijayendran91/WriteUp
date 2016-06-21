class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :url
      t.text :note
      t.string :password
    end
  end
end
