class PromptsAnswer < ApplicationRecord



  validates :prompt_one, presence: true

  validates :prompt_id, presence: true

  validates :owner_id, presence: true



  belongs_to :writer, required: false, class_name: "User", foreign_key: "owner_id"

  belongs_to :prompt, required: false, class_name: "Prompt", foreign_key: "prompt_id"


end
