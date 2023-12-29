class AddPreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :preferences do |t|
      t.string :shipping_policy
      t.string :return_policy
      t.string :payment_policy
      t.boolean :include_title
      t.boolean :include_author
      t.boolean :include_keywords
      t.boolean :include_edition
      t.boolean :include_year
      t.string :terms_of_sale_title
      t.text :terms_of_sale
      t.boolean :enable_best_offer
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
