require 'rubygems'
require 'bundler'
Bundler.require
require 'gosu'
$: << File.dirname(__FILE__)
require 'piece'
require 'pawn'
require 'rook'
require 'player'
require 'board'
require 'game'

game = Game.new(800, 800, false)

game.show


puts game.board.layout
