# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
  validates :name, presence: true, uniqueness: {message: "%{value} is not unique"}

  has_many :poke_moves,
    dependent: :destroy,
    inverse_of: :move

  has_many :pokemon,
    through: :poke_moves,
    source: :pokemon
end
