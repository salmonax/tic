class Board
  def initialize
    @squares = [[" "," "," "],[" "," "," "],[" "," "," "]]
    @play = "X"
  end

  def mark(row, column)
    if @squares[row-1][column-1] == " "
      @squares[row-1][column-1] = @play
      @play == "X" ? @play = "O" : @play = "X"
      true
    else
      false
    end

  end

  def has_column?
    flat = @squares.flatten
    triad1 = [flat[0],flat[3],flat[6]]
    triad2 = [flat[1],flat[4],flat[7]]
    triad3 = [flat[2],flat[5],flat[8]]
    if triad1.uniq.length == 1
      return true
    elsif triad2.uniq.length == 1
      return true
    elsif triad3.uniq.length == 1
      return true
    end
    true
  end

  def has_row?

  end

  def has_diagonal?

  end

  def to_s
    string = ""
    string << "-------\n"
    @squares.each do |row_array|
      string << '|'
      row_array.each do |column_value|
        string << column_value + '|'
      end
      string << "\n"
      string << "-------\n"
    end
    string
  end



end