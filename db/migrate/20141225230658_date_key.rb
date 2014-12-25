class DateKey < ActiveRecord::Migration
  def self.up
    remove_column :students, :date
    add_column :students, :date_id, :integer
  end
  def self.down
    add_column :students, :date, :string
    remove_column :students, :date_id
  end
end
