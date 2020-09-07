class Api::MyExamplesController < ApplicationController
  def fortune_action
    fortunes = [
      "You will become very rich.", 
      "You will become very poor.", 
      "You will need to pay upfront.... for you will die in 7 days."
    ]
    @fortune = fortunes.sample
    render "fortune.json.jb"
  end

  def lotto_action
    @numbers = []
    6.times do 
      @numbers << rand(1..60)
    end
    render "lotto.json.jb"
  end

  def count_action
    @counter = 0
    @counter += 1
    render "count.json.jb"
  end
end
