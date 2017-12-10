# Helper Method
board = [" "," "," "," "," "," "," "," "," "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def display_board(board)
  puts" {board[0]} | {board[1]} | {board[2]} "
  puts"-----------"
  puts" {board[3]} | {board[4]} | {board[5]} "
  puts"-----------"
  puts" {board[6]} | {board[7]} | {board[8]} "
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def position_taken(board, index)
  if board[index] == " "
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if (index > 0 && index < 9) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

  
