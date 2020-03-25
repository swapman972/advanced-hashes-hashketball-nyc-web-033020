# Write your code here!
require 'pry'

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        {:player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1},
        {:player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7},
        {:player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15},
        {:player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5},
        {:player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1}
        ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        {:player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2},
        {:player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10},
        {:player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5},
        {:player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0},
        {:player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12}
        ]
    }
  }
end

def num_points_scored(p_name)
  game_hash.each do |h_a, value|
    value[:players].each do |hash|
      if hash[:player_name] == p_name
        return hash[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |h_a, value|
    value[:players].each do |hash|
      if hash[:player_name] == name
        return hash[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |h_a, value|
    if value[:team_name] == team
      return value[:colors]
    end
  end
end

def team_names
  array = []
  game_hash.each do |h_a, value|
    array << value[:team_name]
  end
  array
end

def player_numbers(team)
  array = []
  game_hash.each do |h_a, value|
    if value[:team_name] == team
      value[:players].each do |hash|
        array << hash[:number]
      end
    end
  end
  array
end

def player_stats(player)
  game_hash.each do |h_a, value|
    value[:players].each do |hash|
      if hash[:player_name] == player
        answer = hash.reject{ |k| k == :player_name}
        return answer
      end
    end
  end
end

def big_shoe_rebounds
  player_with_big_shoe = ""
  big_shoe = 0
  game_hash.each do |h_a, value|
    value[:players].each do |hash|
      if hash[:shoe] > big_shoe
        player_with_big_shoe = hash[:player_name]
        big_shoe = hash[:shoe]
      end
    end
    value[:players].each do |hash1|
      if player_with_big_shoe == hash1[:player_name]
        return hash1[:rebounds]
      end
    end
  end
end