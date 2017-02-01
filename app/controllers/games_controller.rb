class GamesController < ApplicationController
  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move =="paper"
      @outcome = "lose"
    else
      @outcome = "won"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "win"
    elsif @computer_move =="paper"
      @outcome = "tied"
    else
      @outcome = "lose"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move == "rock"
      @outcome = "lose"
    elsif @computer_move =="paper"
      @outcome = "win"
    else
      @outcome = "tied"
    end

    render("games/play_scissors.html.erb")
  end

  def home
    render("games/home.html.erb")
  end
end
