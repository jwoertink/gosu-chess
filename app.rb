require 'rubygems'
require 'bundler'
Bundler.require
require 'gosu'
$: << File.dirname(__FILE__)
require 'pawn'
require 'player'
require 'board'
require 'game'

game = Game.new

game.show
