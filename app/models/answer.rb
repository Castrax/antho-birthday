class Answer < ApplicationRecord
  belongs_to :category
  belongs_to :nominee
  belongs_to :user
  validates :user_id, :uniqueness => { :scope => :category_id,
    :message => "Les utilisateurs ne peuvent répondre qu'une seule fois pour une catégorie." }

  def self.update
    Answer.all.each do |a|
      a.update(points_earned: 50)
    end
  end
end
