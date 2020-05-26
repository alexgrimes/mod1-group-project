class CreateCustomers < ActiveRecord::Migration[5.2]
  # def up
  #   create_table :tweets do |t|
  #     t.string :message
  #   end
  # end

  # def down
  #   drop_table :tweets
  # end

  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
    end
  end
end