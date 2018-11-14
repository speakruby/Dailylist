class Item < ApplicationRecord

  validates :Item_Number, presence: true
  validates :Item_Name, presence: true
  validates :Qty, presence: true
  validates :unit_of_measure, presence: true
  validates :Frequency, presence: true
end