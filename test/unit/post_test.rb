# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  position   :string(255)
#  typepost   :string(255)
#  image_url  :string(255)
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
