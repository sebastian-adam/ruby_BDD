require('rock_paper_scissors')
require('rspec')
game = Rock_Paper_Scissors.new()

describe('#rock_paper_scissors') do
  it("returns false if rock is p1 and rock is p2") do
    expect(game.shoot("rock", "rock")).to(eq(false))
  end
  it("returns false if rock is p1 and paper is p2") do
    expect(game.shoot("rock", "paper")).to(eq(false))
  end
  it("returns true if rock is p1 and scissors is p2") do
    expect(game.shoot("rock", "scissors")).to(eq(true))
  end
  it("returns true if paper is p1 and rock is p2") do
    expect(game.shoot("paper", "rock")).to(eq(true))
  end
  it("returns flase if scissors is p1 and rock is p2") do
    expect(game.shoot("scissors", "rock")).to(eq(false))
  end
end
