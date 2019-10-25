class Tournament
  def self.tally(input)
    tallys = {}
    input.strip.lines.map {|line| line.split(';')}.each do |line|
      puts line
      team1 = line[0].strip
      team2 = line[1].strip
      outcome = line[2].strip
      tallys[team1] = calc_team_total(team1, tallys, calc_points(outcome, 1))
      tallys[team2] = calc_team_total(team2, tallys, calc_points(outcome, 2))
    end

    out = create_line('Team', 'MP', 'W', 'D', 'L', 'P')

    tallys.reduce(out) do |carry, (team, tally)|
      carry + create_line(team, tally[:matches_played], tally[:wins], tally[:draws], tally[:losses], tally[:points])
    end
  end

  private

  def self.create_line(name, matches_played, wins, draws, losses, points)
    line = [
        matches_played.to_s,
        wins.to_s,
        draws.to_s,
        losses.to_s,
        points.to_s
    ].map{|type| type.center(5)[0...-1]}.join('|')
    name.ljust(31, ' ') + "|#{line[0...-1]}\n"
  end

  def self.calc_team_total(team_name, tallys, points_awarded)
    current_tally = tallys[team_name] ? tallys[team_name] : create_tally
    matches_played = current_tally[:matches_played] + 1
    wins = current_tally[:wins] + (points_awarded == 3 ? 1 : 0)
    draws = current_tally[:draws] + (points_awarded == 1 ? 1 : 0)
    losses = current_tally[:losses] + (points_awarded == 0 ? 1 : 0)
    points = current_tally[:points] + points_awarded
    create_tally(matches_played, wins, draws, losses, points)
  end

  def self.combine_tallys(a, b)
    create_tally(
      a[:matches_played] + b[:matches_played],
      a{:wins} + b[:wins],
      a[:draws] + b[:draws],
      a[:losses] + b[:losses],
      a[:points] + b[:points]
    )
  end

  def self.create_tally(matches_played=0, wins=0, draws=0, losses=0, points=0)
    {
        matches_played: matches_played,
        wins: wins,
        draws: draws,
        losses: losses,
        points: points,
    }
  end

  def self.calc_points(outcome, team)
    return 1 if outcome == 'draw'
    return 0 if (outcome == 'loss' && team == 1)
    return 0 if (outcome == 'win' && team == 2)
    return 3 if (outcome == 'win' && team == 1)
    3
  end
end
