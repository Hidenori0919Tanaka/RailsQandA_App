class RenameSolvedFlagColumnToQuestions < ActiveRecord::Migration[6.0]
  def change
    rename_column :questions, :solvedFlag, :solved_flag
  end
end
