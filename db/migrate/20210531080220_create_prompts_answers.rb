class CreatePromptsAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :prompts_answers do |t|
      t.text :prompt_one
      t.integer :owner_id
      t.integer :prompt_id
      t.string :prompt_two
      t.string :prompt_three

      t.timestamps
    end
  end
end
