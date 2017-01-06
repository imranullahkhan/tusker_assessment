class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
    	t.string :fname
    	t.string :sname
    	t.string :city
    end
  end
end
