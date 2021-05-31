# == Schema Information
#
# Table name: prompts_answers
#
#  id           :bigint           not null, primary key
#  prompt_one   :text
#  owner_id     :integer
#  prompt_id    :integer
#  prompt_two   :string
#  prompt_three :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class PromptsAnswer < ApplicationRecord



  validates :prompt_one, presence: true

  validates :prompt_id, presence: true

  validates :owner_id, presence: true



  belongs_to :writer, required: false, class_name: "User", foreign_key: "owner_id"

  belongs_to :prompt, required: false, class_name: "Prompt", foreign_key: "prompt_id"


end
