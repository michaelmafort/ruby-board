class Project < ApplicationRecord
  validates_presence_of :title
  has_many :tasks

  def to_s
    self.title
  end
end
