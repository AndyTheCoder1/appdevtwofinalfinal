class Prompt < ApplicationRecord
  has_one   :prompts_answer, class_name: "PromptsAnswer", foreign_key: "prompt_id", dependent: :destroy
end
