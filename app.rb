require 'rubygems'
require 'bundler'
Bundler.require
require 'gosu'
$: << File.join(File.dirname(__FILE__), 'lib')
require 'piece'
require 'pawn'
require 'rook'
require 'bishop'
require 'knight'
require 'king'
require 'queen'
require 'player'
require 'board'
require 'game'

game = Game.new(800, 800, false)
game.show
