def display_board(board)
  #print out the current state of board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  #converts user_input to integer then subtracts 1
  user_input.to_i - 1
end

def valid_move?(board, index)
  #return true if index is within 0-8
  index = index.to_i - 1
  if index.between?(0, 8)
    #define position_taken? and pass
    #see if position filled or not
    if position_taken?(board,index)
      TRUE
    else
      FALSE
    end
  end
end

def position_taken?(board, index)
  index = index.to_i -1
  board[index] == " "
end
