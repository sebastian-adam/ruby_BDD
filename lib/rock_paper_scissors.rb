class Rock_Paper_Scissors
  def shoot(p1, num)
    comp_hash = { 0=>"scissors", 1=>"paper", 2=>"rock" }
    p2 = comp_hash.fetch(num)
    if (p2 == "paper") && (p1 == "rock")
      "Computer wins"
    elsif (p2 == "rock") && (p1 == "rock")
      "Tie"
    elsif (p1 == "rock")
      "P1 wins"
    elsif (p2 == "scissors") && (p1 == "paper")
      "Computer wins"
    elsif (p2 == "paper") && (p1 == "paper")
      "Tie"
    elsif (p1 == "paper")
      "P1 wins"
    elsif (p2 == "rock") && (p1 == "scissors")
      "Computer wins"
    elsif (p2 == "scissors") && (p1 == "scissors")
      "Tie"
    elsif (p1 == "scissors")
      "P1 wins"
    end
  end
end
