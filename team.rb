class Team
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(team_name, win, lose, draw)
    self.name = team_name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  def show_team_result
    puts "#{self.name}の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分 勝率は" + win_rate_calc.to_s + "です。"
  end
  
  def win_rate_calc
    return self.win / (self.win + self.lose).to_f
  end
end

giants = Team.new('Giants', 67, 45, 8)
tigers = Team.new('Tigers', 60, 53, 7)
dragons = Team.new('Dragons', 60, 55, 5)
baystars = Team.new('BayStars', 56, 58, 6)
carps = Team.new('Carp', 52, 56, 12)
swallows = Team.new('Swallows', 41, 69, 10)

giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carps.show_team_result
swallows.show_team_result
