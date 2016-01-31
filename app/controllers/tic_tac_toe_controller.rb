class TicTacToeController < ApplicationController

  def new
    @current_player = 'X'
    save_player
    render :game_board
  end

  def make_move
    @current_player = retrieve_current_player

    #todo logic for player move

    switch_player
    save_player

    render :game_board
  end



  private
  def save_player
    session[ :current_player ] = @current_player  
  end

  def retrieve_current_player
    session[ :current_player ]
  end

  def switch_player
    @current_player = 'X' ? 'O' : 'X'
  end

end
