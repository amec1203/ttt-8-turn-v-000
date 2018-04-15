board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

puts display_board(board)

def input_to_index(user_input)
  index = user_input.to_i - 1
  index
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

move(board, 0, "X")

puts display_board(board)

def turn(board)
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?([" ", " ", " ", " ", " ", " ", " ", " ", " "], 0) == false
    puts "Please enter 1-9:"
    until true
  end 
end
