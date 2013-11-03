class Cost < ActiveRecord::Base
  attr_accessible :category_id, :cost_money, :date

  belongs_to :category

  validates :category, :date, :presence => true
end
