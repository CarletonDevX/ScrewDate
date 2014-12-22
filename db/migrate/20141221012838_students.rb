class Students < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :studentName
      t.string :dormName
      t.integer :dormFloor
      t.string :dormRoomNumber
      t.string :studentEmail
      t.string :proxy
      t.string :proxyEmail
      t.boolean :available, default: false
      t.boolean :taken, default: false
      t.boolean :confirmed, default: false
      t.string :date
      t.integer :classYear
      t.string :major
    end
  end
end
