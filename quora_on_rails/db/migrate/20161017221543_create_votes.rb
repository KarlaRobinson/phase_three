class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.belongs_to :answer
      t.timestamps
    end
  end
end
