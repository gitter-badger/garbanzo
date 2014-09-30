# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(150)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'should not save category without name' do
    category = categories(:engineer)
    assert category.invalid?, "It should be invalid"
    assert category.errors[:name].any?, "It should contain an error in the name"
    assert_equal ["can't be blank"], category.errors[:name], "The error message should be 'can't be blank' and was #{category.errors[:name]}"
  end

  test 'should not save category name with leading or trailing whitespaces' do
    category = Category.create(name: " taxi driver ")
    assert_equal "taxi driver", category.name, "The name should have been saved without leading or trailing whitespaces"
  end
end
