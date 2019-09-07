class Move < ApplicationRecord

  def self.config_new_move
    new_move = LiterateRandomizer.word
    kill_move = Move.find(Move.all.ids.sample)
    Move.create(move: new_move, kills: kill_move.move)
  end

end
