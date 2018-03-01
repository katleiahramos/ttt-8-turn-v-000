def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end


def valid_move?(board,index)
 if position_taken?(board,index)
   return false
  elsif index > 9 || index < 0
   return false
 else
   return true
 end
end

def move(board,input_to_index, character = "X")
  board[input_to_index] = character
end