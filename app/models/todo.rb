class Todo < ActiveRecord::Base
  attr_accessible :title, :finished, :description
end
