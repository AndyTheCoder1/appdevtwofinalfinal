# == Schema Information
#
# Table name: prompts
#
#  id         :bigint           not null, primary key
#  questions  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Prompt < ApplicationRecord
  has_one   :prompts_answer, class_name: "PromptsAnswer", foreign_key: "prompt_id", dependent: :destroy
end
