class ProxyKey < ActiveRecord::Migration
  def self.up
    remove_column :students, :proxy
    remove_column :students, :proxy_email
    add_column :students, :proxy_id, :integer
  end
  def self.down
    add_column :students, :proxy, :string
    add_column :students, :proxy_email, :string
    remove_column :students, :proxy_id
  end
end
