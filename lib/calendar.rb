require 'date'

class Calendar

  def initialize(month = Date.today.month, year = Date.today.year)
    @date         = Date.parse("#{year}-#{month}-01")
    @week         = []
  end

  def output
    first_week
    complete_month
    @week
  end

  def pretty_output
    pp_out = ''
    output.each do |day|
      pp_out << (day == 'new_line' ? "\n" : day)
    end
    pp_out
  end

  private

  def first_week
    0.upto(6) do |numb|
      @week << '   ' if numb < @date.cwday
    end
  end

  def complete_month
    current_month = @date
    until current_month == @date.next_month
      space = current_month.day < 10 ? '  ' : ' '
      space = '' if current_month.day == @date.next_month.prev_day.day

      @week << "#{current_month.day}#{space}"
      @week << 'new_line' if current_month.cwday == 6
      current_month = current_month.next_day
    end
  end
end
