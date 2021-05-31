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
require "test_helper"

class PromptsAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
