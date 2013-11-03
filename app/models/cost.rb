class Cost < ActiveRecord::Base
  attr_accessible :category_id, :cost_money

  belongs_to :category
  attr_accessor :date
end
