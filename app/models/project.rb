class Project < ApplicationRecord
  belongs_to :user
  has_many :notes

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
