class Project < ApplicationRecord
  def to_s
    self.title
  end
end
