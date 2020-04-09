class Answer < ApplicationRecord
  belongs_to :category
  belongs_to :nominee
  belongs_to :user

  def self.update
    Answer.all.each do |a|
      a.update(points_earned: 50)
    end
  end
end
