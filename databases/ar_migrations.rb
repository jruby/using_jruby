require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'jdbc',
  :driver => 'com.mysql.jdbc.Driver',
  :url => 'jdbc:mysql://localhost/using_jruby',
  :username => 'root',
  :password => ''
)

# START:define
class AddFooTable < ActiveRecord::Migration
  def self.up
    create_table :foo do |t|
      t.string  :foo
      t.text  :bar
      t.integer  :qux
    end
  end

  def self.down
    drop_table :foo
  end
end

class AddBlechColumnTable < ActiveRecord::Migration
  def self.up
    add_column :foo, :flax, :string
  end

  def self.down
    remove_column :foo, :flax
  end
end
# END:define

# START:run
AddFooTable.migrate(:up)
AddBlechColumnTable.migrate(:up)
AddBlechColumnTable.migrate(:down)
AddFooTable.migrate(:down)
# END:run
