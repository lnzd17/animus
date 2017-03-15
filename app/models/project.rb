class Project < ApplicationRecord
  belongs_to :user
  has_many :notes

  validates :label, presence: true
  validates :priority, :numericality => { :less_than_or_equal_to => 5 }

  LABELS = {
    'Artwork': "1",
    'Architecture': "2",
    'Furniture': "3",
    'Craft': "4",
    'App': "5"
  }

  def humanized_labels
    LABELS.invert[self.label]
  end



end
