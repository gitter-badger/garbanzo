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

  before_save :strip_name
  before_save :capitalize_name

  def strip_name
    self.name = self.name.strip
  end

  def capitalize_name
    self.name  = self.name.capitalize
  end
end
