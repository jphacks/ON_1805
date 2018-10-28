class AddLaboratoryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users,:laboratory, foreign_key: true
  end
end
