class CreateUsers < ActiveRecord::Migration
  
  def change
    create_table :users do |t|

      t.string :email, uniqueness: true
      t.string :name, presence: true

      t.timestamps

    end
  end
end
