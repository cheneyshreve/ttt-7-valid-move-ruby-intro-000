# code your #valid_move? method here
def valid_move?(board,index)
  val = board[index].to_i
if position_taken?(board,index) == false &&  val.between?(0,8) == true
  return true
else
  return false
end
return board
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   return false
 elsif board[index] == "X" || board[index] == "O"
   return true
 end
end

valid_move?(board, index)
