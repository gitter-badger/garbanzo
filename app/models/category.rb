# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(150)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  validates_presence_of :name
end
