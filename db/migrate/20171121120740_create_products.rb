class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_url
      t.references(:user, index: true)
      t.timestamps
    end
  end
end
