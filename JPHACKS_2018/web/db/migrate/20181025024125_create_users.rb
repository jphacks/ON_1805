class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :ie_number
      # t.references :laboratory, foreign_key: true
      t.string :email
      t.float :gpa

      t.timestamps
    end
  end
end
