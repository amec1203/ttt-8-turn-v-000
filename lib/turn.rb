board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(user_input)
  index = user_input.to_i - 1
  index
end

def move(board, index, value == "X" || value == "O")
  board[index] = value
end

move(board, 0, "X")

puts display_board(board)

puts "Where would you like to go? 1-9"
