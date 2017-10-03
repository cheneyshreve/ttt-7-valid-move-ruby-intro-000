# code your #valid_move? method here
board = Array.new(9, " ")

def valid_move?(board,index)
  val = board[index].to_i
if position_taken?(board,index) == false &&  val.between?(0,8) == true
  return true
elsif position_taken?(board,index) == true || val.between?(0,8) == false
  return false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   return false
 elsif board[index] == "X" || board[index] == "O"
   return true
 end
 return index
end

valid_move?(board, index)
