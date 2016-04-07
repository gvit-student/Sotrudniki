class Sotr < ActiveRecord::Base
  belongs_to :dlzh
  has_many :hobby_sotrs
end
