class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups = Array.new(14) {[:stone, :stone, :stone, :stone]}
    cups[6] = []
    cups[13] = []
    return cups
  end

  def valid_move?(start_pos)
    if start_pos >= 14 || start_pos < 0
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise 'Starting cup is empty'
    else
      return true 
    end
  end

  def make_move(start_pos, current_player_name)
    stones_in_hand = []
    until @cups[start_pos].empty?  
      stones_in_hand << @cups[start_pos].pop
    end
    i = start_pos + 1
    placed_cups = []
    until stones_in_hand.empty?
      i = 0 if i == 13
      placed_cups << i
      @cups[i] << stones_in_hand.pop
      i+=1
    end 
    self.render
    return self.next_turn(placed_cups[-1])
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :switch if @cups[ending_cup_idx].length == 1
    return :prompt if ending_cup_idx == 6
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
