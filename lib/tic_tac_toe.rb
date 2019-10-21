require 'pry'
class TicTacToe

  WIN_COMBINATIONS= [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,4,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [6,4,2]
  ]

  def initialize(board=Array.new(9," "))
    @board=board
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input_integer=input.to_i
    input_integer-=1
  end

  def move(index, string="X")
    @board[index]=string
  end

  def position_taken?(index)
     if @board[index]=="X" || @board[index]=="O"
       return true
     else
       return false
     end
  end

  def valid_move?(input)
    if !self.position_taken?(input) && input.between?(0,8)
      return true
    end
  end

  def turn_count
    @board.count {|token| token=="X"||token=="O"}
  end

  def current_player
    self.turn_count%2==0 ? "X" : "O"
  end

  def turn
    input=gets
    index= self.input_to_index(input)
    if self.valid_move?(index)
      self.move(index, self.current_player)
      display_board
    else
      turn
    end
  end

  def won?
    
    WIN_COMBINATIONS.each do |win_combo|
     combo = win_combo[0] #setting each win_combo = to a variable
     combo1 = win_combo[1]
     combo2 = win_combo[2]
     
     position1 = @board[combo]
     position2 = @board[combo1]
     position3 = @board[combo2]
      if (position1 == "X" && position2 =="X" && position3 =="X") || (position1 == "O" && position2 =="O" && position3 =="O")
     #if position1 == position2 && position2 == position3  
       
        return win_combo
     end
   end
   return false
  end
  
  def full?
    @board.all?{|string| string == "X" || string == "O"}
  end
  def draw?
    !won? && full?
  end 
  def over?
   if draw? || won?
     return true
   else
    return false
  end
  end 
  def winner
<<<<<<< HEAD
    winners_combo = []
=======
<<<<<<< HEAD
    
=======
>>>>>>> bca8fea2e5e51e47ad69fc65a9e1dec7e599923f
>>>>>>> 5730ee038ed73d3cf55e4adc561155077d2ba2bd
    winners_combo = won?
    
    if winners_combo == false
      return nil
    else
      if @board[winners_combo[0]] == "X" 
        return "X"
      else 
        return "O"
      end
    end
  end
  
   def play
<<<<<<< HEAD
    until over? == true
=======
<<<<<<< HEAD
    until over?
>>>>>>> 5730ee038ed73d3cf55e4adc561155077d2ba2bd
      turn
    end
    if won?
      puts "Congratulations #{winner}!"
    #   puts "Congratulations X!"
    # else winner == "O"
    #   puts "Congratulations O!"
     elsif draw?
      puts "Cat's Game!"
    end
    end
<<<<<<< HEAD
  end

    # until over? == true
    #   turn
    # # if !draw? == true
    # #     turn
    # #   end
    # end
    # # if won? == true
    # #   puts "Congratulations!"+ winner
    # #   elsif draw? 
    # #   puts "Cat's Game!"
    # # end

=======
=======
    until over? == true
      turn
    # if !draw? == true
    #     turn
    #   end
    end
    if won? == true
      puts "Congratulations!"+ winner
      elsif draw? 
      puts "Cat's Game!"
    end
   end
>>>>>>> bca8fea2e5e51e47ad69fc65a9e1dec7e599923f
end
>>>>>>> 5730ee038ed73d3cf55e4adc561155077d2ba2bd
 # winners_combo.detect{|token| token == "X" || token == "O"} 
 # else
    #   # if winners_combo.detect("O")
    #   # return "O"
    # if @board.all?{|winners_combo| winners_combo == "X"}
    #   return "X"
    # else
    # # elsif @board.all?{ == "O"}
    # return "O"
  # end
  

  # !@board.include?(“”) && 
    #   then we need to look at positions on the board, or set each board position equal to a variable?
    #   position = board[index?]
       
    #   then check if all the board positions have X's or O's 
      
    #   if yes return a win_combo 
    #   else, return false 
    # else @board.all? == "X" || "O" 
    
     
    # return win_combos #need to return the winning combos after we've matched them
 
  

  # end
  # if !@board.include?("") && @board.all?{|string| string == "X" || string == "O"}


   # user_inputs = []
          # user_inputs << self.valid_move?
          # user_inputs << self.valid_move?
          # user_inputs << self.valid_move?
           
      # if user_inputs == [WIN_COMBINATIONS] 
      #   WIN_COMBINATIONS 
        
      # else 
      #   ( @board.all? == "X" || "O")  || @board.any? 
      #   # !WIN_COMBINATIONS
      #   false
     
      # end  