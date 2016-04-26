class Item < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true

  STATUS = {
    :incomplete => 0,
    :complete => 1
  }

  #instance helper methods to determine status
  def complete?
    self.status == STATUS[:complete]
  end

  def incomplete?
    self.status == STATUS[:incomplete]
  end

end
