class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :scenario
      t.references(:user, index: true)
      t.timestamps
    end
  end
end
