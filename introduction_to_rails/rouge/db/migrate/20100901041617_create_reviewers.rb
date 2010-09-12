class CreateReviewers < ActiveRecord::Migration
  def self.up
    create_table :reviewers do |t|
      t.string :name
      t.string :description
      t.string :username
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :reviewers
  end
end
