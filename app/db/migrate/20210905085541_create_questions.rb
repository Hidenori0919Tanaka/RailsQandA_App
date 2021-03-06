class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title,      null: false, default: ""
      t.string :text,       null: false, default: ""
      t.string :solvedFlag
      t.references :user, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
