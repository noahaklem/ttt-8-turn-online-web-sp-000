def display_board(board)
  #print out the current state of board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  #converts user_input to integer
  #subtracts 1
  user_input = user_input.to_i
  converted_input = user_input - 1
end

def position_taken?(board, index)
  if board[index] == " "
    true
  else
    false
  end
end

def valid_move?(board, index)
  #return true if index is within 0-8
  if index.between?(0, 8)
    if position_taken?(board, index)
      true
    else
      false
    end
  end
end

def move(board, index, token = "X")
  #place the token at the correct index value on the board 
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  converted_input = input_to_index(index)
  if valid_move?(board,converted_input)
    move(board, converted_input)
  else
    turn(board)
  end
end
