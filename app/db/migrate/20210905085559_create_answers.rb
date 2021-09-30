class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :title,      null: false, default: ""
      t.string :text,       null: false, default: ""
      t.references :user, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
