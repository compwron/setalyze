require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'simplecov'
SimpleCov.start

require 'ostruct'
require_relative '../../lib/setalyze/card.rb'
require_relative '../../lib/setalyze/card_set.rb'
require_relative '../../lib/setalyze/deck.rb'
require_relative '../../lib/setalyze/game.rb'
require_relative '../../lib/setalyze/solver.rb'
require_relative '../../lib/setalyze/spread.rb'
require_relative '../../lib/setalyze/instructions.rb'
